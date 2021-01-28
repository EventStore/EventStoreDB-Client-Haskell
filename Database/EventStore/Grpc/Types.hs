--------------------------------------------------------------------------------
-- |
-- Module : Database.EventStore.Grpc.Types
-- Copyright : (C) 2021 Yorick Laupa
-- License : (see the file LICENSE)
--
-- Maintainer : Yorick Laupa <yo.eight@gmail.com>
-- Stability : provisional
-- Portability : non-portable
--
--------------------------------------------------------------------------------
module Database.EventStore.Grpc.Types where

--------------------------------------------------------------------------------
import Data.Int (Int64)
import Prelude

import Data.ByteString (ByteString)
import Data.Map (Map)
import Data.Text (Text)
import Data.UUID (UUID)
--------------------------------------------------------------------------------
data WriteResult = WriteResult

--------------------------------------------------------------------------------
-- | Contains event information like its type and data. Only used for write
--   queries.
data ProposedMessage
    = ProposedMessage
      { proposedMessageType :: Text
      , proposedMessageId :: Maybe UUID
      , proposedMessageMetadata :: Map Text Text
      , proposedMessageData :: ByteString
      , proposedMessageCustomMetadata :: ByteString
      , proposedMessageIsJson :: Bool
      } deriving (Eq, Show)

--------------------------------------------------------------------------------
-- | Constants used for expected version control.
--
--   The use of expected version can be a bit tricky especially when discussing
--   idempotency assurances given by the EventStore.
--
--   The EventStore  will assure idempotency for all operations using any value
--   in 'ExpectedVersion' except for 'anyStream'. When using 'anyStream' the
--   EventStore will do its best to assure idempotency but will not guarantee
--   idempotency.
data ExpectedStreamRevision
    = Any
    | NoStream
    | Exact Int64
    | StreamExists
    deriving (Eq, Show)