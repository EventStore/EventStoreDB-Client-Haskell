{-# LANGUAGE StrictData #-}
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
data WriteResult =
  WriteResult
  { writeResultCurrentRevision :: CurrentRevision
  , writeResultPosition :: Maybe Position
  }

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

--------------------------------------------------------------------------------
data CurrentRevision
  = CurrentRevision Int64
  | CurrentRevisionNoStream

--------------------------------------------------------------------------------
-- | A structure referring to a potential logical record position in the
--   EventStore transaction file.
data Position
    = Position
      { positionCommit :: Int64 -- ^ Commit position of the record
      , positionPrepare :: Int64 -- ^ Prepare position of the record
      }
    deriving Show

--------------------------------------------------------------------------------
instance Eq Position where
    Position ac aap == Position bc bp = ac == bc && aap == bp

--------------------------------------------------------------------------------
instance Ord Position where
    compare (Position ac aap) (Position bc bp) =
        if ac < bc || (ac == bc && aap < bp)
        then LT
        else if ac > bc || (ac == bc && aap > bp)
             then GT
             else EQ

--------------------------------------------------------------------------------
-- | Representing the start of the transaction file.
positionStart :: Position
positionStart = Position 0 0

--------------------------------------------------------------------------------
-- | Representing the end of the transaction file.
positionEnd :: Position
positionEnd = Position (-1) (-1)
