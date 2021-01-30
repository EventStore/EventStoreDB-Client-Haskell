{-# LANGUAGE DataKinds #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE NumericUnderscores #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
--------------------------------------------------------------------------------
-- |
-- Module : Database.EventStore.Grpc
-- Copyright : (C) 2021 Yorick Laupa
-- License : (see the file LICENSE)
--
-- Maintainer : Yorick Laupa <yo.eight@gmail.com>
-- Stability : provisional
-- Portability : non-portable
--
--------------------------------------------------------------------------------
module Database.EventStore.Grpc where

--------------------------------------------------------------------------------
import Control.Exception (Exception(..), throwIO)
import Control.Monad.IO.Class (liftIO)
import Data.String (fromString)
import Data.Word (Word64)
import GHC.Generics (Generic)
import Prelude

--------------------------------------------------------------------------------
import Data.Aeson (ToJSON)
import qualified Data.Aeson as Aeson
import Data.ByteString (ByteString)
import Data.ByteString.Lazy (toStrict)
import Data.ByteString.Base64 as Base64
import Data.Default.Class (Default(..))
import qualified Data.Map as Map
import Data.ProtoLens (defMessage)
import Data.Text (Text)
import Data.Text.Encoding (encodeUtf8)
import qualified Data.UUID as UUID
import Lens.Micro ((&), (^.), (^?), (.~), (?~), to, _Right, _1, _2, _3, non, singular, traversed)
import Network.GRPC.Client (RawReply, open, singleRequest, streamReply, streamRequest, uncompressed, Timeout(..), StreamDone(..), CompressMode(..), RPCCall)
import qualified Network.HTTP2.Client as Client
import qualified Network.GRPC.Client.Helpers as Client
import qualified Network.GRPC.HTTP2.Types as Http2Types
import qualified Network.GRPC.HTTP2.Encoding as Http2Types
import qualified Network.GRPC.HTTP2.ProtoLens as ProtoLens

--------------------------------------------------------------------------------
import qualified Database.EventStore.Grpc.Types as Types
import qualified Database.EventStore.Grpc.Wire.Shared as Shared
import qualified Database.EventStore.Grpc.Wire.Shared_Fields as Shared_Fields
import qualified Database.EventStore.Grpc.Wire.Streams as Streams
import qualified Database.EventStore.Grpc.Wire.Streams_Fields as Streams_Fields

--------------------------------------------------------------------------------
data ShowableException = forall e. Show e => ShowableException e

deriving instance Show ShowableException
instance Exception ShowableException

--------------------------------------------------------------------------------
appendReqRPC :: ProtoLens.RPC Streams.Streams  "append"
appendReqRPC = ProtoLens.RPC

--------------------------------------------------------------------------------
data Client =
  Client
  { _clientInner :: Client.Http2Client
  , _clientAuthority :: ByteString
  }

--------------------------------------------------------------------------------
data AppendStreamOptions =
  AppendStreamOptions
  { appendStreamOptionsExpectedRevision :: Types.ExpectedStreamRevision }

--------------------------------------------------------------------------------
instance Default AppendStreamOptions where
  def =
    AppendStreamOptions
    { appendStreamOptionsExpectedRevision = Types.Any }

--------------------------------------------------------------------------------
data Foo = Foo { _fooValue :: Int } deriving (Generic)

--------------------------------------------------------------------------------
instance ToJSON Foo

--------------------------------------------------------------------------------
testGrpc :: IO ()
testGrpc = do
  Right conn <- createConn "127.0.0.1" 2113
  let message =
        Types.ProposedMessage
        { proposedMessageType = "tested-event"
        , proposedMessageId = Nothing
        , proposedMessageMetadata = Map.empty
        , proposedMessageData = toStrict . Aeson.encode $ Foo 4
        , proposedMessageCustomMetadata = ""
        , proposedMessageIsJson = True
        }

  res <- appendToStream conn "test-grpc-haskell" [message] def
  print res


--------------------------------------------------------------------------------
createConn :: Client.HostName -> Client.PortNumber -> IO (Either Client.ClientError Client)
createConn hostname port = Client.runClientIO $ do
    conn <- Client.newHttp2FrameConnection hostname port Nothing
    client <- Client.newHttp2Client conn 8_192 8_192 [] Client.defaultGoAwayHandler Client.ignoreFallbackHandler
    let ifc = Client._incomingFlowControl client
    liftIO $ Client._addCredit ifc 10_000_000_000 -- We allow the server to spam us as much as it want.
    _ <- Client._updateWindow ifc
    pure $ Client client (fromString $ hostname ++ ":" ++ show port)

--------------------------------------------------------------------------------
executeCall :: Http2Types.IsRPC r => Client -> RPCCall r a -> IO a
executeCall c call = do
  res <- Client.runClientIO $
    open
      (_clientInner c)
      (_clientAuthority c)
      []
      (Timeout maxBound)
      (Http2Types.Encoding uncompressed)
      (Http2Types.Decoding uncompressed) call

  case res of
    Left e -> throwIO e
    Right res2 ->
      case res2 of
        Left e -> throwIO $ ShowableException e
        Right a -> pure a

--------------------------------------------------------------------------------
handleReply :: RawReply a -> IO a
handleReply (Left code) = throwIO (ShowableException $ "Error code: " ++ show code)
handleReply (Right (a, b, res)) =
  case res of
    Left e -> do
      print a
      print b
      throwIO (ShowableException e)
    Right a -> pure a

--------------------------------------------------------------------------------
appendToStream :: Client
               -> Text
               -> [Types.ProposedMessage]
               -> AppendStreamOptions
               -> IO (Either Types.WrongExpectedVersion Types.WriteResult)
appendToStream c streamName events opts = do
    (_, resp) <- executeCall c (streamRequest appendReqRPC (options : fmap toMessage events) go)
    wireResp <- handleReply resp
    let Just result = wireResp ^. Streams_Fields.maybe'result
    case result of
      Streams.AppendResp'Success' success ->
        let currentRevision = success ^. Streams_Fields.maybe'currentRevision.to toExpectedRev
            position = success ^. Streams_Fields.maybe'position.to (fmap toPosition)
            writeResult =
              Types.WriteResult
              { writeResultCurrentRevision = currentRevision,
                writeResultPosition = position
              } in
        pure $ Right writeResult
      Streams.AppendResp'WrongExpectedVersion' wireExp ->
        let currentVersion = wireExp ^. Streams_Fields.maybe'currentRevision.to toExpectedRev
            Just expectedVersion = wireExp ^. Streams_Fields.maybe'expectedRevisionOption.to (fmap toExpectedVersion)
            wrongVersion =
              Types.WrongExpectedVersion
              { wrongExpectedCurrent = currentVersion
              , wrongExpectedVersion = expectedVersion } in
        pure $ Left wrongVersion
  where
    go []     = pure ([], Left StreamDone)
    go (x:xs) = pure (xs, Right (Uncompressed, x))

    expectation =
      case appendStreamOptionsExpectedRevision opts of
        Types.Any -> Streams.AppendReq'Options'Any defMessage
        Types.NoStream -> Streams.AppendReq'Options'NoStream defMessage
        Types.StreamExists -> Streams.AppendReq'Options'StreamExists defMessage
        Types.Exact rev -> Streams.AppendReq'Options'Revision (fromIntegral rev)

    toExpectedVersion :: Streams.AppendResp'WrongExpectedVersion'ExpectedRevisionOption -> Types.ExpectedStreamRevision
    toExpectedVersion (Streams.AppendResp'WrongExpectedVersion'ExpectedRevision v) = Types.Exact (fromIntegral v)
    toExpectedVersion (Streams.AppendResp'WrongExpectedVersion'Any _) = Types.Any
    toExpectedVersion (Streams.AppendResp'WrongExpectedVersion'StreamExists _) = Types.StreamExists

    options :: Streams.AppendReq
    options =
      let header =
            defMessage
              & Streams_Fields.maybe'streamIdentifier.non defMessage.Shared_Fields.streamName .~ (Base64.encode . encodeUtf8 $ streamName)
              & Streams_Fields.maybe'expectedStreamRevision ?~ expectation in
      defMessage
        & Streams_Fields.maybe'options ?~ header

    contentType :: Types.ProposedMessage -> Text
    contentType msg
      | Types.proposedMessageIsJson msg = "application/json"
      | otherwise = "application/octet-stream"

    metadata :: Types.ProposedMessage -> Map.Map Text Text
    metadata msg = Map.fromList
      [ ("type", Types.proposedMessageType msg)
      , ("content-type", contentType msg)
      ]

    toExpectedRev :: Maybe Word64 -> Types.CurrentRevision
    toExpectedRev Nothing = Types.CurrentRevisionNoStream
    toExpectedRev (Just rev) = Types.CurrentRevision (fromIntegral rev)

    toPosition :: Streams.AppendResp'Position -> Types.Position
    toPosition p =
      Types.Position
      { positionCommit = p ^. Streams_Fields.commitPosition.to fromIntegral
      , positionPrepare = p ^. Streams_Fields.preparePosition.to fromIntegral
      }

    toMessage :: Types.ProposedMessage -> Streams.AppendReq
    toMessage msg =
      let content =
            defMessage
              & Streams_Fields.data' .~ Types.proposedMessageData msg
              & Streams_Fields.metadata .~ metadata msg
              & Streams_Fields.customMetadata .~ Types.proposedMessageCustomMetadata msg
          final =
            case Types.proposedMessageId msg of
              Nothing -> content
              Just uid -> content & Streams_Fields.maybe'id.non defMessage.Shared_Fields.string .~ UUID.toText uid in
      defMessage
        & Streams_Fields.maybe'proposedMessage ?~ final
