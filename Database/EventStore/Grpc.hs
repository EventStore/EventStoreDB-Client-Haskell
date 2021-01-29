{-# LANGUAGE DataKinds #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE NumericUnderscores #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE ExistentialQuantification #-}
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
import Prelude

--------------------------------------------------------------------------------
import Data.ByteString (ByteString)
import Data.ByteString.Base64 as Base64
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
handleReply = undefined

--------------------------------------------------------------------------------
appendToStream :: Client
               -> Text
               -> [Types.ProposedMessage]
               -> AppendStreamOptions
               -> IO Types.WriteResult
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
        pure writeResult
      Streams.AppendResp'WrongExpectedVersion' _ ->
        pure undefined
  where
    go []     = pure ([], Left StreamDone)
    go (x:xs) = pure (xs, Right (Uncompressed, x))

    expectation =
      case appendStreamOptionsExpectedRevision opts of
        Types.Any -> Streams.AppendReq'Options'Any defMessage
        Types.NoStream -> Streams.AppendReq'Options'NoStream defMessage
        Types.StreamExists -> Streams.AppendReq'Options'StreamExists defMessage
        Types.Exact rev -> Streams.AppendReq'Options'Revision (fromIntegral rev)

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
