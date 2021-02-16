{- This file was auto-generated from persistent.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Database.EventStore.Grpc.Wire.Persistent (
        PersistentSubscriptions(..), CreateReq(),
        CreateReq'ConsumerStrategy(..), CreateReq'ConsumerStrategy(),
        CreateReq'ConsumerStrategy'UnrecognizedValue, CreateReq'Options(),
        CreateReq'Settings(), CreateReq'Settings'MessageTimeout(..),
        CreateReq'Settings'CheckpointAfter(..),
        _CreateReq'Settings'MessageTimeoutTicks,
        _CreateReq'Settings'MessageTimeoutMs,
        _CreateReq'Settings'CheckpointAfterTicks,
        _CreateReq'Settings'CheckpointAfterMs, CreateResp(), DeleteReq(),
        DeleteReq'Options(), DeleteResp(), ReadReq(), ReadReq'Content(..),
        _ReadReq'Options', _ReadReq'Ack', _ReadReq'Nack', ReadReq'Ack(),
        ReadReq'Nack(), ReadReq'Nack'Action(..), ReadReq'Nack'Action(),
        ReadReq'Nack'Action'UnrecognizedValue, ReadReq'Options(),
        ReadReq'Options'UUIDOption(),
        ReadReq'Options'UUIDOption'Content(..),
        _ReadReq'Options'UUIDOption'Structured,
        _ReadReq'Options'UUIDOption'String, ReadResp(),
        ReadResp'Content(..), _ReadResp'Event,
        _ReadResp'SubscriptionConfirmation', ReadResp'ReadEvent(),
        ReadResp'ReadEvent'Position(..), ReadResp'ReadEvent'Count(..),
        _ReadResp'ReadEvent'CommitPosition, _ReadResp'ReadEvent'NoPosition,
        _ReadResp'ReadEvent'RetryCount, _ReadResp'ReadEvent'NoRetryCount,
        ReadResp'ReadEvent'RecordedEvent(),
        ReadResp'ReadEvent'RecordedEvent'MetadataEntry(),
        ReadResp'SubscriptionConfirmation(), UpdateReq(),
        UpdateReq'ConsumerStrategy(..), UpdateReq'ConsumerStrategy(),
        UpdateReq'ConsumerStrategy'UnrecognizedValue, UpdateReq'Options(),
        UpdateReq'Settings(), UpdateReq'Settings'MessageTimeout(..),
        UpdateReq'Settings'CheckpointAfter(..),
        _UpdateReq'Settings'MessageTimeoutTicks,
        _UpdateReq'Settings'MessageTimeoutMs,
        _UpdateReq'Settings'CheckpointAfterTicks,
        _UpdateReq'Settings'CheckpointAfterMs, UpdateResp()
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes as Data.ProtoLens.Encoding.Bytes
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing as Data.ProtoLens.Encoding.Growing
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum as Data.ProtoLens.Message.Enum
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2 as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8 as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
import qualified Database.EventStore.Grpc.Wire.Shared
{- | Fields :
     
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.options' @:: Lens' CreateReq CreateReq'Options@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'options' @:: Lens' CreateReq (Prelude.Maybe CreateReq'Options)@ -}
data CreateReq
  = CreateReq'_constructor {_CreateReq'options :: !(Prelude.Maybe CreateReq'Options),
                            _CreateReq'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CreateReq where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CreateReq "options" CreateReq'Options where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'options (\ x__ y__ -> x__ {_CreateReq'options = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CreateReq "maybe'options" (Prelude.Maybe CreateReq'Options) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'options (\ x__ y__ -> x__ {_CreateReq'options = y__}))
        Prelude.id
instance Data.ProtoLens.Message CreateReq where
  messageName _
    = Data.Text.pack
        "event_store.client.persistent_subscriptions.CreateReq"
  fieldsByTag
    = let
        options__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CreateReq'Options)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'options")) ::
              Data.ProtoLens.FieldDescriptor CreateReq
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, options__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CreateReq'_unknownFields
        (\ x__ y__ -> x__ {_CreateReq'_unknownFields = y__})
  defMessage
    = CreateReq'_constructor
        {_CreateReq'options = Prelude.Nothing,
         _CreateReq'_unknownFields = []}
  parseMessage
    = let
        loop :: CreateReq -> Data.ProtoLens.Encoding.Bytes.Parser CreateReq
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "options"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"options") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CreateReq"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'options") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CreateReq where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CreateReq'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CreateReq'options x__) ())
newtype CreateReq'ConsumerStrategy'UnrecognizedValue
  = CreateReq'ConsumerStrategy'UnrecognizedValue Data.Int.Int32
  deriving (Prelude.Eq, Prelude.Ord, Prelude.Show)
data CreateReq'ConsumerStrategy
  = CreateReq'DispatchToSingle |
    CreateReq'RoundRobin |
    CreateReq'Pinned |
    CreateReq'ConsumerStrategy'Unrecognized !CreateReq'ConsumerStrategy'UnrecognizedValue
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum CreateReq'ConsumerStrategy where
  maybeToEnum 0 = Prelude.Just CreateReq'DispatchToSingle
  maybeToEnum 1 = Prelude.Just CreateReq'RoundRobin
  maybeToEnum 2 = Prelude.Just CreateReq'Pinned
  maybeToEnum k
    = Prelude.Just
        (CreateReq'ConsumerStrategy'Unrecognized
           (CreateReq'ConsumerStrategy'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum CreateReq'DispatchToSingle = "DispatchToSingle"
  showEnum CreateReq'RoundRobin = "RoundRobin"
  showEnum CreateReq'Pinned = "Pinned"
  showEnum
    (CreateReq'ConsumerStrategy'Unrecognized (CreateReq'ConsumerStrategy'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "DispatchToSingle"
    = Prelude.Just CreateReq'DispatchToSingle
    | (Prelude.==) k "RoundRobin" = Prelude.Just CreateReq'RoundRobin
    | (Prelude.==) k "Pinned" = Prelude.Just CreateReq'Pinned
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded CreateReq'ConsumerStrategy where
  minBound = CreateReq'DispatchToSingle
  maxBound = CreateReq'Pinned
instance Prelude.Enum CreateReq'ConsumerStrategy where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ConsumerStrategy: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum CreateReq'DispatchToSingle = 0
  fromEnum CreateReq'RoundRobin = 1
  fromEnum CreateReq'Pinned = 2
  fromEnum
    (CreateReq'ConsumerStrategy'Unrecognized (CreateReq'ConsumerStrategy'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ CreateReq'Pinned
    = Prelude.error
        "CreateReq'ConsumerStrategy.succ: bad argument CreateReq'Pinned. This value would be out of bounds."
  succ CreateReq'DispatchToSingle = CreateReq'RoundRobin
  succ CreateReq'RoundRobin = CreateReq'Pinned
  succ (CreateReq'ConsumerStrategy'Unrecognized _)
    = Prelude.error
        "CreateReq'ConsumerStrategy.succ: bad argument: unrecognized value"
  pred CreateReq'DispatchToSingle
    = Prelude.error
        "CreateReq'ConsumerStrategy.pred: bad argument CreateReq'DispatchToSingle. This value would be out of bounds."
  pred CreateReq'RoundRobin = CreateReq'DispatchToSingle
  pred CreateReq'Pinned = CreateReq'RoundRobin
  pred (CreateReq'ConsumerStrategy'Unrecognized _)
    = Prelude.error
        "CreateReq'ConsumerStrategy.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault CreateReq'ConsumerStrategy where
  fieldDefault = CreateReq'DispatchToSingle
instance Control.DeepSeq.NFData CreateReq'ConsumerStrategy where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.streamIdentifier' @:: Lens' CreateReq'Options Proto.Shared.StreamIdentifier@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'streamIdentifier' @:: Lens' CreateReq'Options (Prelude.Maybe Proto.Shared.StreamIdentifier)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.groupName' @:: Lens' CreateReq'Options Data.Text.Text@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.settings' @:: Lens' CreateReq'Options CreateReq'Settings@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'settings' @:: Lens' CreateReq'Options (Prelude.Maybe CreateReq'Settings)@ -}
data CreateReq'Options
  = CreateReq'Options'_constructor {_CreateReq'Options'streamIdentifier :: !(Prelude.Maybe Database.EventStore.Grpc.Wire.Shared.StreamIdentifier),
                                    _CreateReq'Options'groupName :: !Data.Text.Text,
                                    _CreateReq'Options'settings :: !(Prelude.Maybe CreateReq'Settings),
                                    _CreateReq'Options'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CreateReq'Options where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CreateReq'Options "streamIdentifier" Database.EventStore.Grpc.Wire.Shared.StreamIdentifier where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Options'streamIdentifier
           (\ x__ y__ -> x__ {_CreateReq'Options'streamIdentifier = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CreateReq'Options "maybe'streamIdentifier" (Prelude.Maybe Database.EventStore.Grpc.Wire.Shared.StreamIdentifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Options'streamIdentifier
           (\ x__ y__ -> x__ {_CreateReq'Options'streamIdentifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CreateReq'Options "groupName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Options'groupName
           (\ x__ y__ -> x__ {_CreateReq'Options'groupName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CreateReq'Options "settings" CreateReq'Settings where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Options'settings
           (\ x__ y__ -> x__ {_CreateReq'Options'settings = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CreateReq'Options "maybe'settings" (Prelude.Maybe CreateReq'Settings) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Options'settings
           (\ x__ y__ -> x__ {_CreateReq'Options'settings = y__}))
        Prelude.id
instance Data.ProtoLens.Message CreateReq'Options where
  messageName _
    = Data.Text.pack
        "event_store.client.persistent_subscriptions.CreateReq.Options"
  fieldsByTag
    = let
        streamIdentifier__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stream_identifier"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Database.EventStore.Grpc.Wire.Shared.StreamIdentifier)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'streamIdentifier")) ::
              Data.ProtoLens.FieldDescriptor CreateReq'Options
        groupName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupName")) ::
              Data.ProtoLens.FieldDescriptor CreateReq'Options
        settings__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "settings"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CreateReq'Settings)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'settings")) ::
              Data.ProtoLens.FieldDescriptor CreateReq'Options
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, streamIdentifier__field_descriptor),
           (Data.ProtoLens.Tag 2, groupName__field_descriptor),
           (Data.ProtoLens.Tag 3, settings__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CreateReq'Options'_unknownFields
        (\ x__ y__ -> x__ {_CreateReq'Options'_unknownFields = y__})
  defMessage
    = CreateReq'Options'_constructor
        {_CreateReq'Options'streamIdentifier = Prelude.Nothing,
         _CreateReq'Options'groupName = Data.ProtoLens.fieldDefault,
         _CreateReq'Options'settings = Prelude.Nothing,
         _CreateReq'Options'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CreateReq'Options
          -> Data.ProtoLens.Encoding.Bytes.Parser CreateReq'Options
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "stream_identifier"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"streamIdentifier") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "group_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupName") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "settings"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"settings") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Options"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'streamIdentifier") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"groupName") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8
                            _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'settings") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage
                                _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData CreateReq'Options where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CreateReq'Options'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CreateReq'Options'streamIdentifier x__)
                (Control.DeepSeq.deepseq
                   (_CreateReq'Options'groupName x__)
                   (Control.DeepSeq.deepseq (_CreateReq'Options'settings x__) ())))
{- | Fields :
     
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.resolveLinks' @:: Lens' CreateReq'Settings Prelude.Bool@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.revision' @:: Lens' CreateReq'Settings Data.Word.Word64@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.extraStatistics' @:: Lens' CreateReq'Settings Prelude.Bool@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maxRetryCount' @:: Lens' CreateReq'Settings Data.Int.Int32@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.minCheckpointCount' @:: Lens' CreateReq'Settings Data.Int.Int32@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maxCheckpointCount' @:: Lens' CreateReq'Settings Data.Int.Int32@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maxSubscriberCount' @:: Lens' CreateReq'Settings Data.Int.Int32@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.liveBufferSize' @:: Lens' CreateReq'Settings Data.Int.Int32@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.readBatchSize' @:: Lens' CreateReq'Settings Data.Int.Int32@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.historyBufferSize' @:: Lens' CreateReq'Settings Data.Int.Int32@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.namedConsumerStrategy' @:: Lens' CreateReq'Settings CreateReq'ConsumerStrategy@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'messageTimeout' @:: Lens' CreateReq'Settings (Prelude.Maybe CreateReq'Settings'MessageTimeout)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'messageTimeoutTicks' @:: Lens' CreateReq'Settings (Prelude.Maybe Data.Int.Int64)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.messageTimeoutTicks' @:: Lens' CreateReq'Settings Data.Int.Int64@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'messageTimeoutMs' @:: Lens' CreateReq'Settings (Prelude.Maybe Data.Int.Int32)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.messageTimeoutMs' @:: Lens' CreateReq'Settings Data.Int.Int32@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'checkpointAfter' @:: Lens' CreateReq'Settings (Prelude.Maybe CreateReq'Settings'CheckpointAfter)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'checkpointAfterTicks' @:: Lens' CreateReq'Settings (Prelude.Maybe Data.Int.Int64)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.checkpointAfterTicks' @:: Lens' CreateReq'Settings Data.Int.Int64@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'checkpointAfterMs' @:: Lens' CreateReq'Settings (Prelude.Maybe Data.Int.Int32)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.checkpointAfterMs' @:: Lens' CreateReq'Settings Data.Int.Int32@ -}
data CreateReq'Settings
  = CreateReq'Settings'_constructor {_CreateReq'Settings'resolveLinks :: !Prelude.Bool,
                                     _CreateReq'Settings'revision :: !Data.Word.Word64,
                                     _CreateReq'Settings'extraStatistics :: !Prelude.Bool,
                                     _CreateReq'Settings'maxRetryCount :: !Data.Int.Int32,
                                     _CreateReq'Settings'minCheckpointCount :: !Data.Int.Int32,
                                     _CreateReq'Settings'maxCheckpointCount :: !Data.Int.Int32,
                                     _CreateReq'Settings'maxSubscriberCount :: !Data.Int.Int32,
                                     _CreateReq'Settings'liveBufferSize :: !Data.Int.Int32,
                                     _CreateReq'Settings'readBatchSize :: !Data.Int.Int32,
                                     _CreateReq'Settings'historyBufferSize :: !Data.Int.Int32,
                                     _CreateReq'Settings'namedConsumerStrategy :: !CreateReq'ConsumerStrategy,
                                     _CreateReq'Settings'messageTimeout :: !(Prelude.Maybe CreateReq'Settings'MessageTimeout),
                                     _CreateReq'Settings'checkpointAfter :: !(Prelude.Maybe CreateReq'Settings'CheckpointAfter),
                                     _CreateReq'Settings'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CreateReq'Settings where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data CreateReq'Settings'MessageTimeout
  = CreateReq'Settings'MessageTimeoutTicks !Data.Int.Int64 |
    CreateReq'Settings'MessageTimeoutMs !Data.Int.Int32
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
data CreateReq'Settings'CheckpointAfter
  = CreateReq'Settings'CheckpointAfterTicks !Data.Int.Int64 |
    CreateReq'Settings'CheckpointAfterMs !Data.Int.Int32
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField CreateReq'Settings "resolveLinks" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Settings'resolveLinks
           (\ x__ y__ -> x__ {_CreateReq'Settings'resolveLinks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CreateReq'Settings "revision" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Settings'revision
           (\ x__ y__ -> x__ {_CreateReq'Settings'revision = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CreateReq'Settings "extraStatistics" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Settings'extraStatistics
           (\ x__ y__ -> x__ {_CreateReq'Settings'extraStatistics = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CreateReq'Settings "maxRetryCount" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Settings'maxRetryCount
           (\ x__ y__ -> x__ {_CreateReq'Settings'maxRetryCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CreateReq'Settings "minCheckpointCount" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Settings'minCheckpointCount
           (\ x__ y__ -> x__ {_CreateReq'Settings'minCheckpointCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CreateReq'Settings "maxCheckpointCount" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Settings'maxCheckpointCount
           (\ x__ y__ -> x__ {_CreateReq'Settings'maxCheckpointCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CreateReq'Settings "maxSubscriberCount" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Settings'maxSubscriberCount
           (\ x__ y__ -> x__ {_CreateReq'Settings'maxSubscriberCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CreateReq'Settings "liveBufferSize" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Settings'liveBufferSize
           (\ x__ y__ -> x__ {_CreateReq'Settings'liveBufferSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CreateReq'Settings "readBatchSize" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Settings'readBatchSize
           (\ x__ y__ -> x__ {_CreateReq'Settings'readBatchSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CreateReq'Settings "historyBufferSize" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Settings'historyBufferSize
           (\ x__ y__ -> x__ {_CreateReq'Settings'historyBufferSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CreateReq'Settings "namedConsumerStrategy" CreateReq'ConsumerStrategy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Settings'namedConsumerStrategy
           (\ x__ y__
              -> x__ {_CreateReq'Settings'namedConsumerStrategy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CreateReq'Settings "maybe'messageTimeout" (Prelude.Maybe CreateReq'Settings'MessageTimeout) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Settings'messageTimeout
           (\ x__ y__ -> x__ {_CreateReq'Settings'messageTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CreateReq'Settings "maybe'messageTimeoutTicks" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Settings'messageTimeout
           (\ x__ y__ -> x__ {_CreateReq'Settings'messageTimeout = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CreateReq'Settings'MessageTimeoutTicks x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap CreateReq'Settings'MessageTimeoutTicks y__))
instance Data.ProtoLens.Field.HasField CreateReq'Settings "messageTimeoutTicks" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Settings'messageTimeout
           (\ x__ y__ -> x__ {_CreateReq'Settings'messageTimeout = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CreateReq'Settings'MessageTimeoutTicks x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap CreateReq'Settings'MessageTimeoutTicks y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField CreateReq'Settings "maybe'messageTimeoutMs" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Settings'messageTimeout
           (\ x__ y__ -> x__ {_CreateReq'Settings'messageTimeout = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CreateReq'Settings'MessageTimeoutMs x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CreateReq'Settings'MessageTimeoutMs y__))
instance Data.ProtoLens.Field.HasField CreateReq'Settings "messageTimeoutMs" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Settings'messageTimeout
           (\ x__ y__ -> x__ {_CreateReq'Settings'messageTimeout = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CreateReq'Settings'MessageTimeoutMs x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CreateReq'Settings'MessageTimeoutMs y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField CreateReq'Settings "maybe'checkpointAfter" (Prelude.Maybe CreateReq'Settings'CheckpointAfter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Settings'checkpointAfter
           (\ x__ y__ -> x__ {_CreateReq'Settings'checkpointAfter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CreateReq'Settings "maybe'checkpointAfterTicks" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Settings'checkpointAfter
           (\ x__ y__ -> x__ {_CreateReq'Settings'checkpointAfter = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CreateReq'Settings'CheckpointAfterTicks x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap CreateReq'Settings'CheckpointAfterTicks y__))
instance Data.ProtoLens.Field.HasField CreateReq'Settings "checkpointAfterTicks" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Settings'checkpointAfter
           (\ x__ y__ -> x__ {_CreateReq'Settings'checkpointAfter = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CreateReq'Settings'CheckpointAfterTicks x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap CreateReq'Settings'CheckpointAfterTicks y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField CreateReq'Settings "maybe'checkpointAfterMs" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Settings'checkpointAfter
           (\ x__ y__ -> x__ {_CreateReq'Settings'checkpointAfter = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CreateReq'Settings'CheckpointAfterMs x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CreateReq'Settings'CheckpointAfterMs y__))
instance Data.ProtoLens.Field.HasField CreateReq'Settings "checkpointAfterMs" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateReq'Settings'checkpointAfter
           (\ x__ y__ -> x__ {_CreateReq'Settings'checkpointAfter = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CreateReq'Settings'CheckpointAfterMs x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CreateReq'Settings'CheckpointAfterMs y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message CreateReq'Settings where
  messageName _
    = Data.Text.pack
        "event_store.client.persistent_subscriptions.CreateReq.Settings"
  fieldsByTag
    = let
        resolveLinks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resolve_links"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"resolveLinks")) ::
              Data.ProtoLens.FieldDescriptor CreateReq'Settings
        revision__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "revision"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"revision")) ::
              Data.ProtoLens.FieldDescriptor CreateReq'Settings
        extraStatistics__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extra_statistics"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"extraStatistics")) ::
              Data.ProtoLens.FieldDescriptor CreateReq'Settings
        maxRetryCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_retry_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxRetryCount")) ::
              Data.ProtoLens.FieldDescriptor CreateReq'Settings
        minCheckpointCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_checkpoint_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"minCheckpointCount")) ::
              Data.ProtoLens.FieldDescriptor CreateReq'Settings
        maxCheckpointCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_checkpoint_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxCheckpointCount")) ::
              Data.ProtoLens.FieldDescriptor CreateReq'Settings
        maxSubscriberCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_subscriber_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxSubscriberCount")) ::
              Data.ProtoLens.FieldDescriptor CreateReq'Settings
        liveBufferSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "live_buffer_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"liveBufferSize")) ::
              Data.ProtoLens.FieldDescriptor CreateReq'Settings
        readBatchSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "read_batch_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"readBatchSize")) ::
              Data.ProtoLens.FieldDescriptor CreateReq'Settings
        historyBufferSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "history_buffer_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"historyBufferSize")) ::
              Data.ProtoLens.FieldDescriptor CreateReq'Settings
        namedConsumerStrategy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "named_consumer_strategy"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor CreateReq'ConsumerStrategy)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"namedConsumerStrategy")) ::
              Data.ProtoLens.FieldDescriptor CreateReq'Settings
        messageTimeoutTicks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "message_timeout_ticks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'messageTimeoutTicks")) ::
              Data.ProtoLens.FieldDescriptor CreateReq'Settings
        messageTimeoutMs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "message_timeout_ms"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'messageTimeoutMs")) ::
              Data.ProtoLens.FieldDescriptor CreateReq'Settings
        checkpointAfterTicks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "checkpoint_after_ticks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'checkpointAfterTicks")) ::
              Data.ProtoLens.FieldDescriptor CreateReq'Settings
        checkpointAfterMs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "checkpoint_after_ms"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'checkpointAfterMs")) ::
              Data.ProtoLens.FieldDescriptor CreateReq'Settings
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, resolveLinks__field_descriptor),
           (Data.ProtoLens.Tag 2, revision__field_descriptor),
           (Data.ProtoLens.Tag 3, extraStatistics__field_descriptor),
           (Data.ProtoLens.Tag 5, maxRetryCount__field_descriptor),
           (Data.ProtoLens.Tag 7, minCheckpointCount__field_descriptor),
           (Data.ProtoLens.Tag 8, maxCheckpointCount__field_descriptor),
           (Data.ProtoLens.Tag 9, maxSubscriberCount__field_descriptor),
           (Data.ProtoLens.Tag 10, liveBufferSize__field_descriptor),
           (Data.ProtoLens.Tag 11, readBatchSize__field_descriptor),
           (Data.ProtoLens.Tag 12, historyBufferSize__field_descriptor),
           (Data.ProtoLens.Tag 13, namedConsumerStrategy__field_descriptor),
           (Data.ProtoLens.Tag 4, messageTimeoutTicks__field_descriptor),
           (Data.ProtoLens.Tag 14, messageTimeoutMs__field_descriptor),
           (Data.ProtoLens.Tag 6, checkpointAfterTicks__field_descriptor),
           (Data.ProtoLens.Tag 15, checkpointAfterMs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CreateReq'Settings'_unknownFields
        (\ x__ y__ -> x__ {_CreateReq'Settings'_unknownFields = y__})
  defMessage
    = CreateReq'Settings'_constructor
        {_CreateReq'Settings'resolveLinks = Data.ProtoLens.fieldDefault,
         _CreateReq'Settings'revision = Data.ProtoLens.fieldDefault,
         _CreateReq'Settings'extraStatistics = Data.ProtoLens.fieldDefault,
         _CreateReq'Settings'maxRetryCount = Data.ProtoLens.fieldDefault,
         _CreateReq'Settings'minCheckpointCount = Data.ProtoLens.fieldDefault,
         _CreateReq'Settings'maxCheckpointCount = Data.ProtoLens.fieldDefault,
         _CreateReq'Settings'maxSubscriberCount = Data.ProtoLens.fieldDefault,
         _CreateReq'Settings'liveBufferSize = Data.ProtoLens.fieldDefault,
         _CreateReq'Settings'readBatchSize = Data.ProtoLens.fieldDefault,
         _CreateReq'Settings'historyBufferSize = Data.ProtoLens.fieldDefault,
         _CreateReq'Settings'namedConsumerStrategy = Data.ProtoLens.fieldDefault,
         _CreateReq'Settings'messageTimeout = Prelude.Nothing,
         _CreateReq'Settings'checkpointAfter = Prelude.Nothing,
         _CreateReq'Settings'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CreateReq'Settings
          -> Data.ProtoLens.Encoding.Bytes.Parser CreateReq'Settings
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "resolve_links"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"resolveLinks") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "revision"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"revision") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "extra_statistics"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"extraStatistics") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "max_retry_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxRetryCount") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "min_checkpoint_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"minCheckpointCount") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "max_checkpoint_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxCheckpointCount") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "max_subscriber_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxSubscriberCount") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "live_buffer_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"liveBufferSize") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "read_batch_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"readBatchSize") y x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "history_buffer_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"historyBufferSize") y x)
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "named_consumer_strategy"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"namedConsumerStrategy") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "message_timeout_ticks"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"messageTimeoutTicks") y x)
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "message_timeout_ms"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"messageTimeoutMs") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "checkpoint_after_ticks"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"checkpointAfterTicks") y x)
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "checkpoint_after_ms"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"checkpointAfterMs") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Settings"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"resolveLinks") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt
                         (\ b -> if b then 1 else 0)
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"revision") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"extraStatistics") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt
                               (\ b -> if b then 1 else 0)
                               _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"maxRetryCount") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"minCheckpointCount") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                     Prelude.fromIntegral
                                     _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"maxCheckpointCount") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        Prelude.fromIntegral
                                        _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"maxSubscriberCount") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           Prelude.fromIntegral
                                           _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"liveBufferSize") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                           ((Prelude..)
                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                              Prelude.fromIntegral
                                              _v))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"readBatchSize") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 Prelude.fromIntegral
                                                 _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"historyBufferSize")
                                                 _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                 ((Prelude..)
                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    Prelude.fromIntegral
                                                    _v))
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field
                                                       @"namedConsumerStrategy")
                                                    _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 104)
                                                    ((Prelude..)
                                                       ((Prelude..)
                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          Prelude.fromIntegral)
                                                       Prelude.fromEnum
                                                       _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'messageTimeout")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just (CreateReq'Settings'MessageTimeoutTicks v))
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                                        ((Prelude..)
                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           Prelude.fromIntegral
                                                           v)
                                                 (Prelude.Just (CreateReq'Settings'MessageTimeoutMs v))
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           112)
                                                        ((Prelude..)
                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           Prelude.fromIntegral
                                                           v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'checkpointAfter")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just (CreateReq'Settings'CheckpointAfterTicks v))
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              48)
                                                           ((Prelude..)
                                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              Prelude.fromIntegral
                                                              v)
                                                    (Prelude.Just (CreateReq'Settings'CheckpointAfterMs v))
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              120)
                                                           ((Prelude..)
                                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              Prelude.fromIntegral
                                                              v))
                                                 (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                    (Lens.Family2.view
                                                       Data.ProtoLens.unknownFields _x))))))))))))))
instance Control.DeepSeq.NFData CreateReq'Settings where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CreateReq'Settings'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CreateReq'Settings'resolveLinks x__)
                (Control.DeepSeq.deepseq
                   (_CreateReq'Settings'revision x__)
                   (Control.DeepSeq.deepseq
                      (_CreateReq'Settings'extraStatistics x__)
                      (Control.DeepSeq.deepseq
                         (_CreateReq'Settings'maxRetryCount x__)
                         (Control.DeepSeq.deepseq
                            (_CreateReq'Settings'minCheckpointCount x__)
                            (Control.DeepSeq.deepseq
                               (_CreateReq'Settings'maxCheckpointCount x__)
                               (Control.DeepSeq.deepseq
                                  (_CreateReq'Settings'maxSubscriberCount x__)
                                  (Control.DeepSeq.deepseq
                                     (_CreateReq'Settings'liveBufferSize x__)
                                     (Control.DeepSeq.deepseq
                                        (_CreateReq'Settings'readBatchSize x__)
                                        (Control.DeepSeq.deepseq
                                           (_CreateReq'Settings'historyBufferSize x__)
                                           (Control.DeepSeq.deepseq
                                              (_CreateReq'Settings'namedConsumerStrategy x__)
                                              (Control.DeepSeq.deepseq
                                                 (_CreateReq'Settings'messageTimeout x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_CreateReq'Settings'checkpointAfter x__)
                                                    ())))))))))))))
instance Control.DeepSeq.NFData CreateReq'Settings'MessageTimeout where
  rnf (CreateReq'Settings'MessageTimeoutTicks x__)
    = Control.DeepSeq.rnf x__
  rnf (CreateReq'Settings'MessageTimeoutMs x__)
    = Control.DeepSeq.rnf x__
instance Control.DeepSeq.NFData CreateReq'Settings'CheckpointAfter where
  rnf (CreateReq'Settings'CheckpointAfterTicks x__)
    = Control.DeepSeq.rnf x__
  rnf (CreateReq'Settings'CheckpointAfterMs x__)
    = Control.DeepSeq.rnf x__
_CreateReq'Settings'MessageTimeoutTicks ::
  Data.ProtoLens.Prism.Prism' CreateReq'Settings'MessageTimeout Data.Int.Int64
_CreateReq'Settings'MessageTimeoutTicks
  = Data.ProtoLens.Prism.prism'
      CreateReq'Settings'MessageTimeoutTicks
      (\ p__
         -> case p__ of
              (CreateReq'Settings'MessageTimeoutTicks p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CreateReq'Settings'MessageTimeoutMs ::
  Data.ProtoLens.Prism.Prism' CreateReq'Settings'MessageTimeout Data.Int.Int32
_CreateReq'Settings'MessageTimeoutMs
  = Data.ProtoLens.Prism.prism'
      CreateReq'Settings'MessageTimeoutMs
      (\ p__
         -> case p__ of
              (CreateReq'Settings'MessageTimeoutMs p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CreateReq'Settings'CheckpointAfterTicks ::
  Data.ProtoLens.Prism.Prism' CreateReq'Settings'CheckpointAfter Data.Int.Int64
_CreateReq'Settings'CheckpointAfterTicks
  = Data.ProtoLens.Prism.prism'
      CreateReq'Settings'CheckpointAfterTicks
      (\ p__
         -> case p__ of
              (CreateReq'Settings'CheckpointAfterTicks p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CreateReq'Settings'CheckpointAfterMs ::
  Data.ProtoLens.Prism.Prism' CreateReq'Settings'CheckpointAfter Data.Int.Int32
_CreateReq'Settings'CheckpointAfterMs
  = Data.ProtoLens.Prism.prism'
      CreateReq'Settings'CheckpointAfterMs
      (\ p__
         -> case p__ of
              (CreateReq'Settings'CheckpointAfterMs p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
      -}
data CreateResp
  = CreateResp'_constructor {_CreateResp'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CreateResp where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message CreateResp where
  messageName _
    = Data.Text.pack
        "event_store.client.persistent_subscriptions.CreateResp"
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CreateResp'_unknownFields
        (\ x__ y__ -> x__ {_CreateResp'_unknownFields = y__})
  defMessage
    = CreateResp'_constructor {_CreateResp'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CreateResp -> Data.ProtoLens.Encoding.Bytes.Parser CreateResp
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of {
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x) }
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CreateResp"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData CreateResp where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_CreateResp'_unknownFields x__) ()
{- | Fields :
     
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.options' @:: Lens' DeleteReq DeleteReq'Options@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'options' @:: Lens' DeleteReq (Prelude.Maybe DeleteReq'Options)@ -}
data DeleteReq
  = DeleteReq'_constructor {_DeleteReq'options :: !(Prelude.Maybe DeleteReq'Options),
                            _DeleteReq'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DeleteReq where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DeleteReq "options" DeleteReq'Options where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeleteReq'options (\ x__ y__ -> x__ {_DeleteReq'options = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DeleteReq "maybe'options" (Prelude.Maybe DeleteReq'Options) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeleteReq'options (\ x__ y__ -> x__ {_DeleteReq'options = y__}))
        Prelude.id
instance Data.ProtoLens.Message DeleteReq where
  messageName _
    = Data.Text.pack
        "event_store.client.persistent_subscriptions.DeleteReq"
  fieldsByTag
    = let
        options__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DeleteReq'Options)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'options")) ::
              Data.ProtoLens.FieldDescriptor DeleteReq
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, options__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DeleteReq'_unknownFields
        (\ x__ y__ -> x__ {_DeleteReq'_unknownFields = y__})
  defMessage
    = DeleteReq'_constructor
        {_DeleteReq'options = Prelude.Nothing,
         _DeleteReq'_unknownFields = []}
  parseMessage
    = let
        loop :: DeleteReq -> Data.ProtoLens.Encoding.Bytes.Parser DeleteReq
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "options"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"options") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DeleteReq"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'options") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData DeleteReq where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DeleteReq'_unknownFields x__)
             (Control.DeepSeq.deepseq (_DeleteReq'options x__) ())
{- | Fields :
     
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.streamIdentifier' @:: Lens' DeleteReq'Options Proto.Shared.StreamIdentifier@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'streamIdentifier' @:: Lens' DeleteReq'Options (Prelude.Maybe Proto.Shared.StreamIdentifier)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.groupName' @:: Lens' DeleteReq'Options Data.Text.Text@ -}
data DeleteReq'Options
  = DeleteReq'Options'_constructor {_DeleteReq'Options'streamIdentifier :: !(Prelude.Maybe Database.EventStore.Grpc.Wire.Shared.StreamIdentifier),
                                    _DeleteReq'Options'groupName :: !Data.Text.Text,
                                    _DeleteReq'Options'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DeleteReq'Options where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DeleteReq'Options "streamIdentifier" Database.EventStore.Grpc.Wire.Shared.StreamIdentifier where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeleteReq'Options'streamIdentifier
           (\ x__ y__ -> x__ {_DeleteReq'Options'streamIdentifier = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DeleteReq'Options "maybe'streamIdentifier" (Prelude.Maybe Database.EventStore.Grpc.Wire.Shared.StreamIdentifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeleteReq'Options'streamIdentifier
           (\ x__ y__ -> x__ {_DeleteReq'Options'streamIdentifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeleteReq'Options "groupName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeleteReq'Options'groupName
           (\ x__ y__ -> x__ {_DeleteReq'Options'groupName = y__}))
        Prelude.id
instance Data.ProtoLens.Message DeleteReq'Options where
  messageName _
    = Data.Text.pack
        "event_store.client.persistent_subscriptions.DeleteReq.Options"
  fieldsByTag
    = let
        streamIdentifier__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stream_identifier"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Database.EventStore.Grpc.Wire.Shared.StreamIdentifier)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'streamIdentifier")) ::
              Data.ProtoLens.FieldDescriptor DeleteReq'Options
        groupName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupName")) ::
              Data.ProtoLens.FieldDescriptor DeleteReq'Options
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, streamIdentifier__field_descriptor),
           (Data.ProtoLens.Tag 2, groupName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DeleteReq'Options'_unknownFields
        (\ x__ y__ -> x__ {_DeleteReq'Options'_unknownFields = y__})
  defMessage
    = DeleteReq'Options'_constructor
        {_DeleteReq'Options'streamIdentifier = Prelude.Nothing,
         _DeleteReq'Options'groupName = Data.ProtoLens.fieldDefault,
         _DeleteReq'Options'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DeleteReq'Options
          -> Data.ProtoLens.Encoding.Bytes.Parser DeleteReq'Options
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "stream_identifier"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"streamIdentifier") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "group_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Options"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'streamIdentifier") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"groupName") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData DeleteReq'Options where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DeleteReq'Options'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DeleteReq'Options'streamIdentifier x__)
                (Control.DeepSeq.deepseq (_DeleteReq'Options'groupName x__) ()))
{- | Fields :
      -}
data DeleteResp
  = DeleteResp'_constructor {_DeleteResp'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DeleteResp where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message DeleteResp where
  messageName _
    = Data.Text.pack
        "event_store.client.persistent_subscriptions.DeleteResp"
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DeleteResp'_unknownFields
        (\ x__ y__ -> x__ {_DeleteResp'_unknownFields = y__})
  defMessage
    = DeleteResp'_constructor {_DeleteResp'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DeleteResp -> Data.ProtoLens.Encoding.Bytes.Parser DeleteResp
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of {
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x) }
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DeleteResp"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData DeleteResp where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_DeleteResp'_unknownFields x__) ()
{- | Fields :
     
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'content' @:: Lens' ReadReq (Prelude.Maybe ReadReq'Content)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'options' @:: Lens' ReadReq (Prelude.Maybe ReadReq'Options)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.options' @:: Lens' ReadReq ReadReq'Options@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'ack' @:: Lens' ReadReq (Prelude.Maybe ReadReq'Ack)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.ack' @:: Lens' ReadReq ReadReq'Ack@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'nack' @:: Lens' ReadReq (Prelude.Maybe ReadReq'Nack)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.nack' @:: Lens' ReadReq ReadReq'Nack@ -}
data ReadReq
  = ReadReq'_constructor {_ReadReq'content :: !(Prelude.Maybe ReadReq'Content),
                          _ReadReq'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ReadReq where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ReadReq'Content
  = ReadReq'Options' !ReadReq'Options |
    ReadReq'Ack' !ReadReq'Ack |
    ReadReq'Nack' !ReadReq'Nack
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ReadReq "maybe'content" (Prelude.Maybe ReadReq'Content) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'content (\ x__ y__ -> x__ {_ReadReq'content = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadReq "maybe'options" (Prelude.Maybe ReadReq'Options) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'content (\ x__ y__ -> x__ {_ReadReq'content = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ReadReq'Options' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ReadReq'Options' y__))
instance Data.ProtoLens.Field.HasField ReadReq "options" ReadReq'Options where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'content (\ x__ y__ -> x__ {_ReadReq'content = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ReadReq'Options' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ReadReq'Options' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ReadReq "maybe'ack" (Prelude.Maybe ReadReq'Ack) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'content (\ x__ y__ -> x__ {_ReadReq'content = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ReadReq'Ack' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ReadReq'Ack' y__))
instance Data.ProtoLens.Field.HasField ReadReq "ack" ReadReq'Ack where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'content (\ x__ y__ -> x__ {_ReadReq'content = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ReadReq'Ack' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ReadReq'Ack' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ReadReq "maybe'nack" (Prelude.Maybe ReadReq'Nack) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'content (\ x__ y__ -> x__ {_ReadReq'content = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ReadReq'Nack' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ReadReq'Nack' y__))
instance Data.ProtoLens.Field.HasField ReadReq "nack" ReadReq'Nack where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'content (\ x__ y__ -> x__ {_ReadReq'content = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ReadReq'Nack' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ReadReq'Nack' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ReadReq where
  messageName _
    = Data.Text.pack
        "event_store.client.persistent_subscriptions.ReadReq"
  fieldsByTag
    = let
        options__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ReadReq'Options)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'options")) ::
              Data.ProtoLens.FieldDescriptor ReadReq
        ack__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ack"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ReadReq'Ack)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ack")) ::
              Data.ProtoLens.FieldDescriptor ReadReq
        nack__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nack"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ReadReq'Nack)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nack")) ::
              Data.ProtoLens.FieldDescriptor ReadReq
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, options__field_descriptor),
           (Data.ProtoLens.Tag 2, ack__field_descriptor),
           (Data.ProtoLens.Tag 3, nack__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ReadReq'_unknownFields
        (\ x__ y__ -> x__ {_ReadReq'_unknownFields = y__})
  defMessage
    = ReadReq'_constructor
        {_ReadReq'content = Prelude.Nothing, _ReadReq'_unknownFields = []}
  parseMessage
    = let
        loop :: ReadReq -> Data.ProtoLens.Encoding.Bytes.Parser ReadReq
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "options"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"options") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "ack"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ack") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "nack"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nack") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ReadReq"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'content") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (ReadReq'Options' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (ReadReq'Ack' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (ReadReq'Nack' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ReadReq where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ReadReq'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ReadReq'content x__) ())
instance Control.DeepSeq.NFData ReadReq'Content where
  rnf (ReadReq'Options' x__) = Control.DeepSeq.rnf x__
  rnf (ReadReq'Ack' x__) = Control.DeepSeq.rnf x__
  rnf (ReadReq'Nack' x__) = Control.DeepSeq.rnf x__
_ReadReq'Options' ::
  Data.ProtoLens.Prism.Prism' ReadReq'Content ReadReq'Options
_ReadReq'Options'
  = Data.ProtoLens.Prism.prism'
      ReadReq'Options'
      (\ p__
         -> case p__ of
              (ReadReq'Options' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ReadReq'Ack' ::
  Data.ProtoLens.Prism.Prism' ReadReq'Content ReadReq'Ack
_ReadReq'Ack'
  = Data.ProtoLens.Prism.prism'
      ReadReq'Ack'
      (\ p__
         -> case p__ of
              (ReadReq'Ack' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ReadReq'Nack' ::
  Data.ProtoLens.Prism.Prism' ReadReq'Content ReadReq'Nack
_ReadReq'Nack'
  = Data.ProtoLens.Prism.prism'
      ReadReq'Nack'
      (\ p__
         -> case p__ of
              (ReadReq'Nack' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.id' @:: Lens' ReadReq'Ack Data.ByteString.ByteString@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.ids' @:: Lens' ReadReq'Ack [Proto.Shared.UUID]@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.vec'ids' @:: Lens' ReadReq'Ack (Data.Vector.Vector Proto.Shared.UUID)@ -}
data ReadReq'Ack
  = ReadReq'Ack'_constructor {_ReadReq'Ack'id :: !Data.ByteString.ByteString,
                              _ReadReq'Ack'ids :: !(Data.Vector.Vector Database.EventStore.Grpc.Wire.Shared.UUID),
                              _ReadReq'Ack'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ReadReq'Ack where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ReadReq'Ack "id" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'Ack'id (\ x__ y__ -> x__ {_ReadReq'Ack'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadReq'Ack "ids" [Database.EventStore.Grpc.Wire.Shared.UUID] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'Ack'ids (\ x__ y__ -> x__ {_ReadReq'Ack'ids = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ReadReq'Ack "vec'ids" (Data.Vector.Vector Database.EventStore.Grpc.Wire.Shared.UUID) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'Ack'ids (\ x__ y__ -> x__ {_ReadReq'Ack'ids = y__}))
        Prelude.id
instance Data.ProtoLens.Message ReadReq'Ack where
  messageName _
    = Data.Text.pack
        "event_store.client.persistent_subscriptions.ReadReq.Ack"
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor ReadReq'Ack
        ids__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ids"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Database.EventStore.Grpc.Wire.Shared.UUID)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"ids")) ::
              Data.ProtoLens.FieldDescriptor ReadReq'Ack
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, ids__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ReadReq'Ack'_unknownFields
        (\ x__ y__ -> x__ {_ReadReq'Ack'_unknownFields = y__})
  defMessage
    = ReadReq'Ack'_constructor
        {_ReadReq'Ack'id = Data.ProtoLens.fieldDefault,
         _ReadReq'Ack'ids = Data.Vector.Generic.empty,
         _ReadReq'Ack'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ReadReq'Ack
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Database.EventStore.Grpc.Wire.Shared.UUID
             -> Data.ProtoLens.Encoding.Bytes.Parser ReadReq'Ack
        loop x mutable'ids
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'ids <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'ids)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields
                           (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'ids") frozen'ids x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                                  mutable'ids
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "ids"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'ids y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'ids
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'ids <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'ids)
          "Ack"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage
                              _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'ids") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ReadReq'Ack where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ReadReq'Ack'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ReadReq'Ack'id x__)
                (Control.DeepSeq.deepseq (_ReadReq'Ack'ids x__) ()))
{- | Fields :
     
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.id' @:: Lens' ReadReq'Nack Data.ByteString.ByteString@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.ids' @:: Lens' ReadReq'Nack [Proto.Shared.UUID]@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.vec'ids' @:: Lens' ReadReq'Nack (Data.Vector.Vector Proto.Shared.UUID)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.action' @:: Lens' ReadReq'Nack ReadReq'Nack'Action@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.reason' @:: Lens' ReadReq'Nack Data.Text.Text@ -}
data ReadReq'Nack
  = ReadReq'Nack'_constructor {_ReadReq'Nack'id :: !Data.ByteString.ByteString,
                               _ReadReq'Nack'ids :: !(Data.Vector.Vector Database.EventStore.Grpc.Wire.Shared.UUID),
                               _ReadReq'Nack'action :: !ReadReq'Nack'Action,
                               _ReadReq'Nack'reason :: !Data.Text.Text,
                               _ReadReq'Nack'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ReadReq'Nack where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ReadReq'Nack "id" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'Nack'id (\ x__ y__ -> x__ {_ReadReq'Nack'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadReq'Nack "ids" [Database.EventStore.Grpc.Wire.Shared.UUID] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'Nack'ids (\ x__ y__ -> x__ {_ReadReq'Nack'ids = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ReadReq'Nack "vec'ids" (Data.Vector.Vector Database.EventStore.Grpc.Wire.Shared.UUID) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'Nack'ids (\ x__ y__ -> x__ {_ReadReq'Nack'ids = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadReq'Nack "action" ReadReq'Nack'Action where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'Nack'action
           (\ x__ y__ -> x__ {_ReadReq'Nack'action = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadReq'Nack "reason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'Nack'reason
           (\ x__ y__ -> x__ {_ReadReq'Nack'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Message ReadReq'Nack where
  messageName _
    = Data.Text.pack
        "event_store.client.persistent_subscriptions.ReadReq.Nack"
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor ReadReq'Nack
        ids__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ids"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Database.EventStore.Grpc.Wire.Shared.UUID)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"ids")) ::
              Data.ProtoLens.FieldDescriptor ReadReq'Nack
        action__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "action"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ReadReq'Nack'Action)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"action")) ::
              Data.ProtoLens.FieldDescriptor ReadReq'Nack
        reason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"reason")) ::
              Data.ProtoLens.FieldDescriptor ReadReq'Nack
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, ids__field_descriptor),
           (Data.ProtoLens.Tag 3, action__field_descriptor),
           (Data.ProtoLens.Tag 4, reason__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ReadReq'Nack'_unknownFields
        (\ x__ y__ -> x__ {_ReadReq'Nack'_unknownFields = y__})
  defMessage
    = ReadReq'Nack'_constructor
        {_ReadReq'Nack'id = Data.ProtoLens.fieldDefault,
         _ReadReq'Nack'ids = Data.Vector.Generic.empty,
         _ReadReq'Nack'action = Data.ProtoLens.fieldDefault,
         _ReadReq'Nack'reason = Data.ProtoLens.fieldDefault,
         _ReadReq'Nack'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ReadReq'Nack
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Database.EventStore.Grpc.Wire.Shared.UUID
             -> Data.ProtoLens.Encoding.Bytes.Parser ReadReq'Nack
        loop x mutable'ids
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'ids <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'ids)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields
                           (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'ids") frozen'ids x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                                  mutable'ids
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "ids"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'ids y)
                                loop x v
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "action"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"action") y x)
                                  mutable'ids
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "reason"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"reason") y x)
                                  mutable'ids
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'ids
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'ids <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'ids)
          "Nack"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage
                              _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'ids") _x))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"action") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                               Prelude.fromEnum
                               _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"reason") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8
                                  _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ReadReq'Nack where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ReadReq'Nack'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ReadReq'Nack'id x__)
                (Control.DeepSeq.deepseq
                   (_ReadReq'Nack'ids x__)
                   (Control.DeepSeq.deepseq
                      (_ReadReq'Nack'action x__)
                      (Control.DeepSeq.deepseq (_ReadReq'Nack'reason x__) ()))))
newtype ReadReq'Nack'Action'UnrecognizedValue
  = ReadReq'Nack'Action'UnrecognizedValue Data.Int.Int32
  deriving (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ReadReq'Nack'Action
  = ReadReq'Nack'Unknown |
    ReadReq'Nack'Park |
    ReadReq'Nack'Retry |
    ReadReq'Nack'Skip |
    ReadReq'Nack'Stop |
    ReadReq'Nack'Action'Unrecognized !ReadReq'Nack'Action'UnrecognizedValue
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ReadReq'Nack'Action where
  maybeToEnum 0 = Prelude.Just ReadReq'Nack'Unknown
  maybeToEnum 1 = Prelude.Just ReadReq'Nack'Park
  maybeToEnum 2 = Prelude.Just ReadReq'Nack'Retry
  maybeToEnum 3 = Prelude.Just ReadReq'Nack'Skip
  maybeToEnum 4 = Prelude.Just ReadReq'Nack'Stop
  maybeToEnum k
    = Prelude.Just
        (ReadReq'Nack'Action'Unrecognized
           (ReadReq'Nack'Action'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum ReadReq'Nack'Unknown = "Unknown"
  showEnum ReadReq'Nack'Park = "Park"
  showEnum ReadReq'Nack'Retry = "Retry"
  showEnum ReadReq'Nack'Skip = "Skip"
  showEnum ReadReq'Nack'Stop = "Stop"
  showEnum
    (ReadReq'Nack'Action'Unrecognized (ReadReq'Nack'Action'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "Unknown" = Prelude.Just ReadReq'Nack'Unknown
    | (Prelude.==) k "Park" = Prelude.Just ReadReq'Nack'Park
    | (Prelude.==) k "Retry" = Prelude.Just ReadReq'Nack'Retry
    | (Prelude.==) k "Skip" = Prelude.Just ReadReq'Nack'Skip
    | (Prelude.==) k "Stop" = Prelude.Just ReadReq'Nack'Stop
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ReadReq'Nack'Action where
  minBound = ReadReq'Nack'Unknown
  maxBound = ReadReq'Nack'Stop
instance Prelude.Enum ReadReq'Nack'Action where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Action: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum ReadReq'Nack'Unknown = 0
  fromEnum ReadReq'Nack'Park = 1
  fromEnum ReadReq'Nack'Retry = 2
  fromEnum ReadReq'Nack'Skip = 3
  fromEnum ReadReq'Nack'Stop = 4
  fromEnum
    (ReadReq'Nack'Action'Unrecognized (ReadReq'Nack'Action'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ReadReq'Nack'Stop
    = Prelude.error
        "ReadReq'Nack'Action.succ: bad argument ReadReq'Nack'Stop. This value would be out of bounds."
  succ ReadReq'Nack'Unknown = ReadReq'Nack'Park
  succ ReadReq'Nack'Park = ReadReq'Nack'Retry
  succ ReadReq'Nack'Retry = ReadReq'Nack'Skip
  succ ReadReq'Nack'Skip = ReadReq'Nack'Stop
  succ (ReadReq'Nack'Action'Unrecognized _)
    = Prelude.error
        "ReadReq'Nack'Action.succ: bad argument: unrecognized value"
  pred ReadReq'Nack'Unknown
    = Prelude.error
        "ReadReq'Nack'Action.pred: bad argument ReadReq'Nack'Unknown. This value would be out of bounds."
  pred ReadReq'Nack'Park = ReadReq'Nack'Unknown
  pred ReadReq'Nack'Retry = ReadReq'Nack'Park
  pred ReadReq'Nack'Skip = ReadReq'Nack'Retry
  pred ReadReq'Nack'Stop = ReadReq'Nack'Skip
  pred (ReadReq'Nack'Action'Unrecognized _)
    = Prelude.error
        "ReadReq'Nack'Action.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ReadReq'Nack'Action where
  fieldDefault = ReadReq'Nack'Unknown
instance Control.DeepSeq.NFData ReadReq'Nack'Action where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.streamIdentifier' @:: Lens' ReadReq'Options Proto.Shared.StreamIdentifier@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'streamIdentifier' @:: Lens' ReadReq'Options (Prelude.Maybe Proto.Shared.StreamIdentifier)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.groupName' @:: Lens' ReadReq'Options Data.Text.Text@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.bufferSize' @:: Lens' ReadReq'Options Data.Int.Int32@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.uuidOption' @:: Lens' ReadReq'Options ReadReq'Options'UUIDOption@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'uuidOption' @:: Lens' ReadReq'Options (Prelude.Maybe ReadReq'Options'UUIDOption)@ -}
data ReadReq'Options
  = ReadReq'Options'_constructor {_ReadReq'Options'streamIdentifier :: !(Prelude.Maybe Database.EventStore.Grpc.Wire.Shared.StreamIdentifier),
                                  _ReadReq'Options'groupName :: !Data.Text.Text,
                                  _ReadReq'Options'bufferSize :: !Data.Int.Int32,
                                  _ReadReq'Options'uuidOption :: !(Prelude.Maybe ReadReq'Options'UUIDOption),
                                  _ReadReq'Options'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ReadReq'Options where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ReadReq'Options "streamIdentifier" Database.EventStore.Grpc.Wire.Shared.StreamIdentifier where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'Options'streamIdentifier
           (\ x__ y__ -> x__ {_ReadReq'Options'streamIdentifier = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ReadReq'Options "maybe'streamIdentifier" (Prelude.Maybe Database.EventStore.Grpc.Wire.Shared.StreamIdentifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'Options'streamIdentifier
           (\ x__ y__ -> x__ {_ReadReq'Options'streamIdentifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadReq'Options "groupName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'Options'groupName
           (\ x__ y__ -> x__ {_ReadReq'Options'groupName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadReq'Options "bufferSize" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'Options'bufferSize
           (\ x__ y__ -> x__ {_ReadReq'Options'bufferSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadReq'Options "uuidOption" ReadReq'Options'UUIDOption where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'Options'uuidOption
           (\ x__ y__ -> x__ {_ReadReq'Options'uuidOption = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ReadReq'Options "maybe'uuidOption" (Prelude.Maybe ReadReq'Options'UUIDOption) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'Options'uuidOption
           (\ x__ y__ -> x__ {_ReadReq'Options'uuidOption = y__}))
        Prelude.id
instance Data.ProtoLens.Message ReadReq'Options where
  messageName _
    = Data.Text.pack
        "event_store.client.persistent_subscriptions.ReadReq.Options"
  fieldsByTag
    = let
        streamIdentifier__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stream_identifier"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Database.EventStore.Grpc.Wire.Shared.StreamIdentifier)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'streamIdentifier")) ::
              Data.ProtoLens.FieldDescriptor ReadReq'Options
        groupName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupName")) ::
              Data.ProtoLens.FieldDescriptor ReadReq'Options
        bufferSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "buffer_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bufferSize")) ::
              Data.ProtoLens.FieldDescriptor ReadReq'Options
        uuidOption__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uuid_option"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ReadReq'Options'UUIDOption)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'uuidOption")) ::
              Data.ProtoLens.FieldDescriptor ReadReq'Options
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, streamIdentifier__field_descriptor),
           (Data.ProtoLens.Tag 2, groupName__field_descriptor),
           (Data.ProtoLens.Tag 3, bufferSize__field_descriptor),
           (Data.ProtoLens.Tag 4, uuidOption__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ReadReq'Options'_unknownFields
        (\ x__ y__ -> x__ {_ReadReq'Options'_unknownFields = y__})
  defMessage
    = ReadReq'Options'_constructor
        {_ReadReq'Options'streamIdentifier = Prelude.Nothing,
         _ReadReq'Options'groupName = Data.ProtoLens.fieldDefault,
         _ReadReq'Options'bufferSize = Data.ProtoLens.fieldDefault,
         _ReadReq'Options'uuidOption = Prelude.Nothing,
         _ReadReq'Options'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ReadReq'Options
          -> Data.ProtoLens.Encoding.Bytes.Parser ReadReq'Options
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "stream_identifier"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"streamIdentifier") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "group_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupName") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "buffer_size"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bufferSize") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "uuid_option"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"uuidOption") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Options"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'streamIdentifier") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"groupName") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8
                            _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"bufferSize") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'uuidOption") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage
                                   _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ReadReq'Options where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ReadReq'Options'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ReadReq'Options'streamIdentifier x__)
                (Control.DeepSeq.deepseq
                   (_ReadReq'Options'groupName x__)
                   (Control.DeepSeq.deepseq
                      (_ReadReq'Options'bufferSize x__)
                      (Control.DeepSeq.deepseq (_ReadReq'Options'uuidOption x__) ()))))
{- | Fields :
     
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'content' @:: Lens' ReadReq'Options'UUIDOption (Prelude.Maybe ReadReq'Options'UUIDOption'Content)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'structured' @:: Lens' ReadReq'Options'UUIDOption (Prelude.Maybe Proto.Shared.Empty)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.structured' @:: Lens' ReadReq'Options'UUIDOption Proto.Shared.Empty@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'string' @:: Lens' ReadReq'Options'UUIDOption (Prelude.Maybe Proto.Shared.Empty)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.string' @:: Lens' ReadReq'Options'UUIDOption Proto.Shared.Empty@ -}
data ReadReq'Options'UUIDOption
  = ReadReq'Options'UUIDOption'_constructor {_ReadReq'Options'UUIDOption'content :: !(Prelude.Maybe ReadReq'Options'UUIDOption'Content),
                                             _ReadReq'Options'UUIDOption'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ReadReq'Options'UUIDOption where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ReadReq'Options'UUIDOption'Content
  = ReadReq'Options'UUIDOption'Structured !Database.EventStore.Grpc.Wire.Shared.Empty |
    ReadReq'Options'UUIDOption'String !Database.EventStore.Grpc.Wire.Shared.Empty
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ReadReq'Options'UUIDOption "maybe'content" (Prelude.Maybe ReadReq'Options'UUIDOption'Content) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'Options'UUIDOption'content
           (\ x__ y__ -> x__ {_ReadReq'Options'UUIDOption'content = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadReq'Options'UUIDOption "maybe'structured" (Prelude.Maybe Database.EventStore.Grpc.Wire.Shared.Empty) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'Options'UUIDOption'content
           (\ x__ y__ -> x__ {_ReadReq'Options'UUIDOption'content = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ReadReq'Options'UUIDOption'Structured x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap ReadReq'Options'UUIDOption'Structured y__))
instance Data.ProtoLens.Field.HasField ReadReq'Options'UUIDOption "structured" Database.EventStore.Grpc.Wire.Shared.Empty where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'Options'UUIDOption'content
           (\ x__ y__ -> x__ {_ReadReq'Options'UUIDOption'content = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ReadReq'Options'UUIDOption'Structured x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap ReadReq'Options'UUIDOption'Structured y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ReadReq'Options'UUIDOption "maybe'string" (Prelude.Maybe Database.EventStore.Grpc.Wire.Shared.Empty) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'Options'UUIDOption'content
           (\ x__ y__ -> x__ {_ReadReq'Options'UUIDOption'content = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ReadReq'Options'UUIDOption'String x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ReadReq'Options'UUIDOption'String y__))
instance Data.ProtoLens.Field.HasField ReadReq'Options'UUIDOption "string" Database.EventStore.Grpc.Wire.Shared.Empty where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadReq'Options'UUIDOption'content
           (\ x__ y__ -> x__ {_ReadReq'Options'UUIDOption'content = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ReadReq'Options'UUIDOption'String x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ReadReq'Options'UUIDOption'String y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ReadReq'Options'UUIDOption where
  messageName _
    = Data.Text.pack
        "event_store.client.persistent_subscriptions.ReadReq.Options.UUIDOption"
  fieldsByTag
    = let
        structured__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "structured"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Database.EventStore.Grpc.Wire.Shared.Empty)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'structured")) ::
              Data.ProtoLens.FieldDescriptor ReadReq'Options'UUIDOption
        string__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "string"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Database.EventStore.Grpc.Wire.Shared.Empty)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'string")) ::
              Data.ProtoLens.FieldDescriptor ReadReq'Options'UUIDOption
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, structured__field_descriptor),
           (Data.ProtoLens.Tag 2, string__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ReadReq'Options'UUIDOption'_unknownFields
        (\ x__ y__
           -> x__ {_ReadReq'Options'UUIDOption'_unknownFields = y__})
  defMessage
    = ReadReq'Options'UUIDOption'_constructor
        {_ReadReq'Options'UUIDOption'content = Prelude.Nothing,
         _ReadReq'Options'UUIDOption'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ReadReq'Options'UUIDOption
          -> Data.ProtoLens.Encoding.Bytes.Parser ReadReq'Options'UUIDOption
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "structured"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"structured") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "string"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"string") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UUIDOption"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'content") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (ReadReq'Options'UUIDOption'Structured v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (ReadReq'Options'UUIDOption'String v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ReadReq'Options'UUIDOption where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ReadReq'Options'UUIDOption'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ReadReq'Options'UUIDOption'content x__) ())
instance Control.DeepSeq.NFData ReadReq'Options'UUIDOption'Content where
  rnf (ReadReq'Options'UUIDOption'Structured x__)
    = Control.DeepSeq.rnf x__
  rnf (ReadReq'Options'UUIDOption'String x__)
    = Control.DeepSeq.rnf x__
_ReadReq'Options'UUIDOption'Structured ::
  Data.ProtoLens.Prism.Prism' ReadReq'Options'UUIDOption'Content Database.EventStore.Grpc.Wire.Shared.Empty
_ReadReq'Options'UUIDOption'Structured
  = Data.ProtoLens.Prism.prism'
      ReadReq'Options'UUIDOption'Structured
      (\ p__
         -> case p__ of
              (ReadReq'Options'UUIDOption'Structured p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ReadReq'Options'UUIDOption'String ::
  Data.ProtoLens.Prism.Prism' ReadReq'Options'UUIDOption'Content Database.EventStore.Grpc.Wire.Shared.Empty
_ReadReq'Options'UUIDOption'String
  = Data.ProtoLens.Prism.prism'
      ReadReq'Options'UUIDOption'String
      (\ p__
         -> case p__ of
              (ReadReq'Options'UUIDOption'String p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'content' @:: Lens' ReadResp (Prelude.Maybe ReadResp'Content)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'event' @:: Lens' ReadResp (Prelude.Maybe ReadResp'ReadEvent)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.event' @:: Lens' ReadResp ReadResp'ReadEvent@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'subscriptionConfirmation' @:: Lens' ReadResp (Prelude.Maybe ReadResp'SubscriptionConfirmation)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.subscriptionConfirmation' @:: Lens' ReadResp ReadResp'SubscriptionConfirmation@ -}
data ReadResp
  = ReadResp'_constructor {_ReadResp'content :: !(Prelude.Maybe ReadResp'Content),
                           _ReadResp'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ReadResp where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ReadResp'Content
  = ReadResp'Event !ReadResp'ReadEvent |
    ReadResp'SubscriptionConfirmation' !ReadResp'SubscriptionConfirmation
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ReadResp "maybe'content" (Prelude.Maybe ReadResp'Content) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'content (\ x__ y__ -> x__ {_ReadResp'content = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadResp "maybe'event" (Prelude.Maybe ReadResp'ReadEvent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'content (\ x__ y__ -> x__ {_ReadResp'content = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ReadResp'Event x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ReadResp'Event y__))
instance Data.ProtoLens.Field.HasField ReadResp "event" ReadResp'ReadEvent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'content (\ x__ y__ -> x__ {_ReadResp'content = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ReadResp'Event x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ReadResp'Event y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ReadResp "maybe'subscriptionConfirmation" (Prelude.Maybe ReadResp'SubscriptionConfirmation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'content (\ x__ y__ -> x__ {_ReadResp'content = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ReadResp'SubscriptionConfirmation' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ReadResp'SubscriptionConfirmation' y__))
instance Data.ProtoLens.Field.HasField ReadResp "subscriptionConfirmation" ReadResp'SubscriptionConfirmation where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'content (\ x__ y__ -> x__ {_ReadResp'content = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ReadResp'SubscriptionConfirmation' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ReadResp'SubscriptionConfirmation' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ReadResp where
  messageName _
    = Data.Text.pack
        "event_store.client.persistent_subscriptions.ReadResp"
  fieldsByTag
    = let
        event__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "event"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ReadResp'ReadEvent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'event")) ::
              Data.ProtoLens.FieldDescriptor ReadResp
        subscriptionConfirmation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "subscription_confirmation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ReadResp'SubscriptionConfirmation)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'subscriptionConfirmation")) ::
              Data.ProtoLens.FieldDescriptor ReadResp
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, event__field_descriptor),
           (Data.ProtoLens.Tag 2, subscriptionConfirmation__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ReadResp'_unknownFields
        (\ x__ y__ -> x__ {_ReadResp'_unknownFields = y__})
  defMessage
    = ReadResp'_constructor
        {_ReadResp'content = Prelude.Nothing,
         _ReadResp'_unknownFields = []}
  parseMessage
    = let
        loop :: ReadResp -> Data.ProtoLens.Encoding.Bytes.Parser ReadResp
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "event"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"event") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "subscription_confirmation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"subscriptionConfirmation") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ReadResp"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'content") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (ReadResp'Event v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (ReadResp'SubscriptionConfirmation' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ReadResp where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ReadResp'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ReadResp'content x__) ())
instance Control.DeepSeq.NFData ReadResp'Content where
  rnf (ReadResp'Event x__) = Control.DeepSeq.rnf x__
  rnf (ReadResp'SubscriptionConfirmation' x__)
    = Control.DeepSeq.rnf x__
_ReadResp'Event ::
  Data.ProtoLens.Prism.Prism' ReadResp'Content ReadResp'ReadEvent
_ReadResp'Event
  = Data.ProtoLens.Prism.prism'
      ReadResp'Event
      (\ p__
         -> case p__ of
              (ReadResp'Event p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ReadResp'SubscriptionConfirmation' ::
  Data.ProtoLens.Prism.Prism' ReadResp'Content ReadResp'SubscriptionConfirmation
_ReadResp'SubscriptionConfirmation'
  = Data.ProtoLens.Prism.prism'
      ReadResp'SubscriptionConfirmation'
      (\ p__
         -> case p__ of
              (ReadResp'SubscriptionConfirmation' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.event' @:: Lens' ReadResp'ReadEvent ReadResp'ReadEvent'RecordedEvent@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'event' @:: Lens' ReadResp'ReadEvent (Prelude.Maybe ReadResp'ReadEvent'RecordedEvent)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.link' @:: Lens' ReadResp'ReadEvent ReadResp'ReadEvent'RecordedEvent@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'link' @:: Lens' ReadResp'ReadEvent (Prelude.Maybe ReadResp'ReadEvent'RecordedEvent)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'position' @:: Lens' ReadResp'ReadEvent (Prelude.Maybe ReadResp'ReadEvent'Position)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'commitPosition' @:: Lens' ReadResp'ReadEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.commitPosition' @:: Lens' ReadResp'ReadEvent Data.Word.Word64@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'noPosition' @:: Lens' ReadResp'ReadEvent (Prelude.Maybe Proto.Shared.Empty)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.noPosition' @:: Lens' ReadResp'ReadEvent Proto.Shared.Empty@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'count' @:: Lens' ReadResp'ReadEvent (Prelude.Maybe ReadResp'ReadEvent'Count)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'retryCount' @:: Lens' ReadResp'ReadEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.retryCount' @:: Lens' ReadResp'ReadEvent Data.Int.Int32@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'noRetryCount' @:: Lens' ReadResp'ReadEvent (Prelude.Maybe Proto.Shared.Empty)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.noRetryCount' @:: Lens' ReadResp'ReadEvent Proto.Shared.Empty@ -}
data ReadResp'ReadEvent
  = ReadResp'ReadEvent'_constructor {_ReadResp'ReadEvent'event :: !(Prelude.Maybe ReadResp'ReadEvent'RecordedEvent),
                                     _ReadResp'ReadEvent'link :: !(Prelude.Maybe ReadResp'ReadEvent'RecordedEvent),
                                     _ReadResp'ReadEvent'position :: !(Prelude.Maybe ReadResp'ReadEvent'Position),
                                     _ReadResp'ReadEvent'count :: !(Prelude.Maybe ReadResp'ReadEvent'Count),
                                     _ReadResp'ReadEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ReadResp'ReadEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ReadResp'ReadEvent'Position
  = ReadResp'ReadEvent'CommitPosition !Data.Word.Word64 |
    ReadResp'ReadEvent'NoPosition !Database.EventStore.Grpc.Wire.Shared.Empty
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
data ReadResp'ReadEvent'Count
  = ReadResp'ReadEvent'RetryCount !Data.Int.Int32 |
    ReadResp'ReadEvent'NoRetryCount !Database.EventStore.Grpc.Wire.Shared.Empty
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent "event" ReadResp'ReadEvent'RecordedEvent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'event
           (\ x__ y__ -> x__ {_ReadResp'ReadEvent'event = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent "maybe'event" (Prelude.Maybe ReadResp'ReadEvent'RecordedEvent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'event
           (\ x__ y__ -> x__ {_ReadResp'ReadEvent'event = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent "link" ReadResp'ReadEvent'RecordedEvent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'link
           (\ x__ y__ -> x__ {_ReadResp'ReadEvent'link = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent "maybe'link" (Prelude.Maybe ReadResp'ReadEvent'RecordedEvent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'link
           (\ x__ y__ -> x__ {_ReadResp'ReadEvent'link = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent "maybe'position" (Prelude.Maybe ReadResp'ReadEvent'Position) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'position
           (\ x__ y__ -> x__ {_ReadResp'ReadEvent'position = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent "maybe'commitPosition" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'position
           (\ x__ y__ -> x__ {_ReadResp'ReadEvent'position = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ReadResp'ReadEvent'CommitPosition x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ReadResp'ReadEvent'CommitPosition y__))
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent "commitPosition" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'position
           (\ x__ y__ -> x__ {_ReadResp'ReadEvent'position = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ReadResp'ReadEvent'CommitPosition x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ReadResp'ReadEvent'CommitPosition y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent "maybe'noPosition" (Prelude.Maybe Database.EventStore.Grpc.Wire.Shared.Empty) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'position
           (\ x__ y__ -> x__ {_ReadResp'ReadEvent'position = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ReadResp'ReadEvent'NoPosition x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ReadResp'ReadEvent'NoPosition y__))
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent "noPosition" Database.EventStore.Grpc.Wire.Shared.Empty where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'position
           (\ x__ y__ -> x__ {_ReadResp'ReadEvent'position = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ReadResp'ReadEvent'NoPosition x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ReadResp'ReadEvent'NoPosition y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent "maybe'count" (Prelude.Maybe ReadResp'ReadEvent'Count) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'count
           (\ x__ y__ -> x__ {_ReadResp'ReadEvent'count = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent "maybe'retryCount" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'count
           (\ x__ y__ -> x__ {_ReadResp'ReadEvent'count = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ReadResp'ReadEvent'RetryCount x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ReadResp'ReadEvent'RetryCount y__))
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent "retryCount" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'count
           (\ x__ y__ -> x__ {_ReadResp'ReadEvent'count = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ReadResp'ReadEvent'RetryCount x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ReadResp'ReadEvent'RetryCount y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent "maybe'noRetryCount" (Prelude.Maybe Database.EventStore.Grpc.Wire.Shared.Empty) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'count
           (\ x__ y__ -> x__ {_ReadResp'ReadEvent'count = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ReadResp'ReadEvent'NoRetryCount x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ReadResp'ReadEvent'NoRetryCount y__))
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent "noRetryCount" Database.EventStore.Grpc.Wire.Shared.Empty where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'count
           (\ x__ y__ -> x__ {_ReadResp'ReadEvent'count = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ReadResp'ReadEvent'NoRetryCount x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ReadResp'ReadEvent'NoRetryCount y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ReadResp'ReadEvent where
  messageName _
    = Data.Text.pack
        "event_store.client.persistent_subscriptions.ReadResp.ReadEvent"
  fieldsByTag
    = let
        event__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "event"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ReadResp'ReadEvent'RecordedEvent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'event")) ::
              Data.ProtoLens.FieldDescriptor ReadResp'ReadEvent
        link__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "link"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ReadResp'ReadEvent'RecordedEvent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'link")) ::
              Data.ProtoLens.FieldDescriptor ReadResp'ReadEvent
        commitPosition__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "commit_position"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commitPosition")) ::
              Data.ProtoLens.FieldDescriptor ReadResp'ReadEvent
        noPosition__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "no_position"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Database.EventStore.Grpc.Wire.Shared.Empty)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'noPosition")) ::
              Data.ProtoLens.FieldDescriptor ReadResp'ReadEvent
        retryCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retry_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'retryCount")) ::
              Data.ProtoLens.FieldDescriptor ReadResp'ReadEvent
        noRetryCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "no_retry_count"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Database.EventStore.Grpc.Wire.Shared.Empty)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'noRetryCount")) ::
              Data.ProtoLens.FieldDescriptor ReadResp'ReadEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, event__field_descriptor),
           (Data.ProtoLens.Tag 2, link__field_descriptor),
           (Data.ProtoLens.Tag 3, commitPosition__field_descriptor),
           (Data.ProtoLens.Tag 4, noPosition__field_descriptor),
           (Data.ProtoLens.Tag 5, retryCount__field_descriptor),
           (Data.ProtoLens.Tag 6, noRetryCount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ReadResp'ReadEvent'_unknownFields
        (\ x__ y__ -> x__ {_ReadResp'ReadEvent'_unknownFields = y__})
  defMessage
    = ReadResp'ReadEvent'_constructor
        {_ReadResp'ReadEvent'event = Prelude.Nothing,
         _ReadResp'ReadEvent'link = Prelude.Nothing,
         _ReadResp'ReadEvent'position = Prelude.Nothing,
         _ReadResp'ReadEvent'count = Prelude.Nothing,
         _ReadResp'ReadEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ReadResp'ReadEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser ReadResp'ReadEvent
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "event"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"event") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "link"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"link") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "commit_position"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"commitPosition") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "no_position"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"noPosition") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "retry_count"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"retryCount") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "no_retry_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"noRetryCount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ReadEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'event") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'link") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'position") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just (ReadResp'ReadEvent'CommitPosition v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt v)
                      (Prelude.Just (ReadResp'ReadEvent'NoPosition v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage
                                v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'count") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just (ReadResp'ReadEvent'RetryCount v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral v)
                         (Prelude.Just (ReadResp'ReadEvent'NoRetryCount v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage
                                   v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ReadResp'ReadEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ReadResp'ReadEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ReadResp'ReadEvent'event x__)
                (Control.DeepSeq.deepseq
                   (_ReadResp'ReadEvent'link x__)
                   (Control.DeepSeq.deepseq
                      (_ReadResp'ReadEvent'position x__)
                      (Control.DeepSeq.deepseq (_ReadResp'ReadEvent'count x__) ()))))
instance Control.DeepSeq.NFData ReadResp'ReadEvent'Position where
  rnf (ReadResp'ReadEvent'CommitPosition x__)
    = Control.DeepSeq.rnf x__
  rnf (ReadResp'ReadEvent'NoPosition x__) = Control.DeepSeq.rnf x__
instance Control.DeepSeq.NFData ReadResp'ReadEvent'Count where
  rnf (ReadResp'ReadEvent'RetryCount x__) = Control.DeepSeq.rnf x__
  rnf (ReadResp'ReadEvent'NoRetryCount x__) = Control.DeepSeq.rnf x__
_ReadResp'ReadEvent'CommitPosition ::
  Data.ProtoLens.Prism.Prism' ReadResp'ReadEvent'Position Data.Word.Word64
_ReadResp'ReadEvent'CommitPosition
  = Data.ProtoLens.Prism.prism'
      ReadResp'ReadEvent'CommitPosition
      (\ p__
         -> case p__ of
              (ReadResp'ReadEvent'CommitPosition p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ReadResp'ReadEvent'NoPosition ::
  Data.ProtoLens.Prism.Prism' ReadResp'ReadEvent'Position Database.EventStore.Grpc.Wire.Shared.Empty
_ReadResp'ReadEvent'NoPosition
  = Data.ProtoLens.Prism.prism'
      ReadResp'ReadEvent'NoPosition
      (\ p__
         -> case p__ of
              (ReadResp'ReadEvent'NoPosition p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ReadResp'ReadEvent'RetryCount ::
  Data.ProtoLens.Prism.Prism' ReadResp'ReadEvent'Count Data.Int.Int32
_ReadResp'ReadEvent'RetryCount
  = Data.ProtoLens.Prism.prism'
      ReadResp'ReadEvent'RetryCount
      (\ p__
         -> case p__ of
              (ReadResp'ReadEvent'RetryCount p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ReadResp'ReadEvent'NoRetryCount ::
  Data.ProtoLens.Prism.Prism' ReadResp'ReadEvent'Count Database.EventStore.Grpc.Wire.Shared.Empty
_ReadResp'ReadEvent'NoRetryCount
  = Data.ProtoLens.Prism.prism'
      ReadResp'ReadEvent'NoRetryCount
      (\ p__
         -> case p__ of
              (ReadResp'ReadEvent'NoRetryCount p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.id' @:: Lens' ReadResp'ReadEvent'RecordedEvent Proto.Shared.UUID@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'id' @:: Lens' ReadResp'ReadEvent'RecordedEvent (Prelude.Maybe Proto.Shared.UUID)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.streamIdentifier' @:: Lens' ReadResp'ReadEvent'RecordedEvent Proto.Shared.StreamIdentifier@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'streamIdentifier' @:: Lens' ReadResp'ReadEvent'RecordedEvent (Prelude.Maybe Proto.Shared.StreamIdentifier)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.streamRevision' @:: Lens' ReadResp'ReadEvent'RecordedEvent Data.Word.Word64@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.preparePosition' @:: Lens' ReadResp'ReadEvent'RecordedEvent Data.Word.Word64@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.commitPosition' @:: Lens' ReadResp'ReadEvent'RecordedEvent Data.Word.Word64@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.metadata' @:: Lens' ReadResp'ReadEvent'RecordedEvent (Data.Map.Map Data.Text.Text Data.Text.Text)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.customMetadata' @:: Lens' ReadResp'ReadEvent'RecordedEvent Data.ByteString.ByteString@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.data'' @:: Lens' ReadResp'ReadEvent'RecordedEvent Data.ByteString.ByteString@ -}
data ReadResp'ReadEvent'RecordedEvent
  = ReadResp'ReadEvent'RecordedEvent'_constructor {_ReadResp'ReadEvent'RecordedEvent'id :: !(Prelude.Maybe Database.EventStore.Grpc.Wire.Shared.UUID),
                                                   _ReadResp'ReadEvent'RecordedEvent'streamIdentifier :: !(Prelude.Maybe Database.EventStore.Grpc.Wire.Shared.StreamIdentifier),
                                                   _ReadResp'ReadEvent'RecordedEvent'streamRevision :: !Data.Word.Word64,
                                                   _ReadResp'ReadEvent'RecordedEvent'preparePosition :: !Data.Word.Word64,
                                                   _ReadResp'ReadEvent'RecordedEvent'commitPosition :: !Data.Word.Word64,
                                                   _ReadResp'ReadEvent'RecordedEvent'metadata :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                                                   _ReadResp'ReadEvent'RecordedEvent'customMetadata :: !Data.ByteString.ByteString,
                                                   _ReadResp'ReadEvent'RecordedEvent'data' :: !Data.ByteString.ByteString,
                                                   _ReadResp'ReadEvent'RecordedEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ReadResp'ReadEvent'RecordedEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent'RecordedEvent "id" Database.EventStore.Grpc.Wire.Shared.UUID where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'RecordedEvent'id
           (\ x__ y__ -> x__ {_ReadResp'ReadEvent'RecordedEvent'id = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent'RecordedEvent "maybe'id" (Prelude.Maybe Database.EventStore.Grpc.Wire.Shared.UUID) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'RecordedEvent'id
           (\ x__ y__ -> x__ {_ReadResp'ReadEvent'RecordedEvent'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent'RecordedEvent "streamIdentifier" Database.EventStore.Grpc.Wire.Shared.StreamIdentifier where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'RecordedEvent'streamIdentifier
           (\ x__ y__
              -> x__ {_ReadResp'ReadEvent'RecordedEvent'streamIdentifier = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent'RecordedEvent "maybe'streamIdentifier" (Prelude.Maybe Database.EventStore.Grpc.Wire.Shared.StreamIdentifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'RecordedEvent'streamIdentifier
           (\ x__ y__
              -> x__ {_ReadResp'ReadEvent'RecordedEvent'streamIdentifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent'RecordedEvent "streamRevision" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'RecordedEvent'streamRevision
           (\ x__ y__
              -> x__ {_ReadResp'ReadEvent'RecordedEvent'streamRevision = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent'RecordedEvent "preparePosition" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'RecordedEvent'preparePosition
           (\ x__ y__
              -> x__ {_ReadResp'ReadEvent'RecordedEvent'preparePosition = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent'RecordedEvent "commitPosition" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'RecordedEvent'commitPosition
           (\ x__ y__
              -> x__ {_ReadResp'ReadEvent'RecordedEvent'commitPosition = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent'RecordedEvent "metadata" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'RecordedEvent'metadata
           (\ x__ y__
              -> x__ {_ReadResp'ReadEvent'RecordedEvent'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent'RecordedEvent "customMetadata" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'RecordedEvent'customMetadata
           (\ x__ y__
              -> x__ {_ReadResp'ReadEvent'RecordedEvent'customMetadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent'RecordedEvent "data'" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'RecordedEvent'data'
           (\ x__ y__ -> x__ {_ReadResp'ReadEvent'RecordedEvent'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Message ReadResp'ReadEvent'RecordedEvent where
  messageName _
    = Data.Text.pack
        "event_store.client.persistent_subscriptions.ReadResp.ReadEvent.RecordedEvent"
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Database.EventStore.Grpc.Wire.Shared.UUID)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'id")) ::
              Data.ProtoLens.FieldDescriptor ReadResp'ReadEvent'RecordedEvent
        streamIdentifier__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stream_identifier"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Database.EventStore.Grpc.Wire.Shared.StreamIdentifier)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'streamIdentifier")) ::
              Data.ProtoLens.FieldDescriptor ReadResp'ReadEvent'RecordedEvent
        streamRevision__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stream_revision"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"streamRevision")) ::
              Data.ProtoLens.FieldDescriptor ReadResp'ReadEvent'RecordedEvent
        preparePosition__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prepare_position"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"preparePosition")) ::
              Data.ProtoLens.FieldDescriptor ReadResp'ReadEvent'RecordedEvent
        commitPosition__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "commit_position"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"commitPosition")) ::
              Data.ProtoLens.FieldDescriptor ReadResp'ReadEvent'RecordedEvent
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ReadResp'ReadEvent'RecordedEvent'MetadataEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor ReadResp'ReadEvent'RecordedEvent
        customMetadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "custom_metadata"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"customMetadata")) ::
              Data.ProtoLens.FieldDescriptor ReadResp'ReadEvent'RecordedEvent
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"data'")) ::
              Data.ProtoLens.FieldDescriptor ReadResp'ReadEvent'RecordedEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, streamIdentifier__field_descriptor),
           (Data.ProtoLens.Tag 3, streamRevision__field_descriptor),
           (Data.ProtoLens.Tag 4, preparePosition__field_descriptor),
           (Data.ProtoLens.Tag 5, commitPosition__field_descriptor),
           (Data.ProtoLens.Tag 6, metadata__field_descriptor),
           (Data.ProtoLens.Tag 7, customMetadata__field_descriptor),
           (Data.ProtoLens.Tag 8, data'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ReadResp'ReadEvent'RecordedEvent'_unknownFields
        (\ x__ y__
           -> x__ {_ReadResp'ReadEvent'RecordedEvent'_unknownFields = y__})
  defMessage
    = ReadResp'ReadEvent'RecordedEvent'_constructor
        {_ReadResp'ReadEvent'RecordedEvent'id = Prelude.Nothing,
         _ReadResp'ReadEvent'RecordedEvent'streamIdentifier = Prelude.Nothing,
         _ReadResp'ReadEvent'RecordedEvent'streamRevision = Data.ProtoLens.fieldDefault,
         _ReadResp'ReadEvent'RecordedEvent'preparePosition = Data.ProtoLens.fieldDefault,
         _ReadResp'ReadEvent'RecordedEvent'commitPosition = Data.ProtoLens.fieldDefault,
         _ReadResp'ReadEvent'RecordedEvent'metadata = Data.Map.empty,
         _ReadResp'ReadEvent'RecordedEvent'customMetadata = Data.ProtoLens.fieldDefault,
         _ReadResp'ReadEvent'RecordedEvent'data' = Data.ProtoLens.fieldDefault,
         _ReadResp'ReadEvent'RecordedEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ReadResp'ReadEvent'RecordedEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser ReadResp'ReadEvent'RecordedEvent
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "stream_identifier"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"streamIdentifier") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "stream_revision"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"streamRevision") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "prepare_position"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"preparePosition") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "commit_position"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"commitPosition") y x)
                        50
                          -> do !(entry :: ReadResp'ReadEvent'RecordedEvent'MetadataEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                                (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                                    Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                      (Prelude.fromIntegral
                                                                                                         len)
                                                                                                      Data.ProtoLens.parseMessage)
                                                                                                "metadata"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"metadata")
                                        (\ !t -> Data.Map.insert key value t)
                                        x))
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "custom_metadata"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"customMetadata") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "data"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RecordedEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'id") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'streamIdentifier") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"streamRevision") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"preparePosition") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"commitPosition") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (Data.Monoid.mconcat
                               (Prelude.map
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                          ((Prelude..)
                                             (\ bs
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                             Data.ProtoLens.encodeMessage
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"key")
                                                (Prelude.fst _v)
                                                (Lens.Family2.set
                                                   (Data.ProtoLens.Field.field @"value")
                                                   (Prelude.snd _v)
                                                   (Data.ProtoLens.defMessage ::
                                                      ReadResp'ReadEvent'RecordedEvent'MetadataEntry)))))
                                  (Data.Map.toList
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"metadata") _x))))
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"customMetadata") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                        ((\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                           _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v = Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                           ((\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData ReadResp'ReadEvent'RecordedEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ReadResp'ReadEvent'RecordedEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ReadResp'ReadEvent'RecordedEvent'id x__)
                (Control.DeepSeq.deepseq
                   (_ReadResp'ReadEvent'RecordedEvent'streamIdentifier x__)
                   (Control.DeepSeq.deepseq
                      (_ReadResp'ReadEvent'RecordedEvent'streamRevision x__)
                      (Control.DeepSeq.deepseq
                         (_ReadResp'ReadEvent'RecordedEvent'preparePosition x__)
                         (Control.DeepSeq.deepseq
                            (_ReadResp'ReadEvent'RecordedEvent'commitPosition x__)
                            (Control.DeepSeq.deepseq
                               (_ReadResp'ReadEvent'RecordedEvent'metadata x__)
                               (Control.DeepSeq.deepseq
                                  (_ReadResp'ReadEvent'RecordedEvent'customMetadata x__)
                                  (Control.DeepSeq.deepseq
                                     (_ReadResp'ReadEvent'RecordedEvent'data' x__) ()))))))))
{- | Fields :
     
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.key' @:: Lens' ReadResp'ReadEvent'RecordedEvent'MetadataEntry Data.Text.Text@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.value' @:: Lens' ReadResp'ReadEvent'RecordedEvent'MetadataEntry Data.Text.Text@ -}
data ReadResp'ReadEvent'RecordedEvent'MetadataEntry
  = ReadResp'ReadEvent'RecordedEvent'MetadataEntry'_constructor {_ReadResp'ReadEvent'RecordedEvent'MetadataEntry'key :: !Data.Text.Text,
                                                                 _ReadResp'ReadEvent'RecordedEvent'MetadataEntry'value :: !Data.Text.Text,
                                                                 _ReadResp'ReadEvent'RecordedEvent'MetadataEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ReadResp'ReadEvent'RecordedEvent'MetadataEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent'RecordedEvent'MetadataEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'RecordedEvent'MetadataEntry'key
           (\ x__ y__
              -> x__
                   {_ReadResp'ReadEvent'RecordedEvent'MetadataEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadResp'ReadEvent'RecordedEvent'MetadataEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'ReadEvent'RecordedEvent'MetadataEntry'value
           (\ x__ y__
              -> x__
                   {_ReadResp'ReadEvent'RecordedEvent'MetadataEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message ReadResp'ReadEvent'RecordedEvent'MetadataEntry where
  messageName _
    = Data.Text.pack
        "event_store.client.persistent_subscriptions.ReadResp.ReadEvent.RecordedEvent.MetadataEntry"
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor ReadResp'ReadEvent'RecordedEvent'MetadataEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor ReadResp'ReadEvent'RecordedEvent'MetadataEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ReadResp'ReadEvent'RecordedEvent'MetadataEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_ReadResp'ReadEvent'RecordedEvent'MetadataEntry'_unknownFields = y__})
  defMessage
    = ReadResp'ReadEvent'RecordedEvent'MetadataEntry'_constructor
        {_ReadResp'ReadEvent'RecordedEvent'MetadataEntry'key = Data.ProtoLens.fieldDefault,
         _ReadResp'ReadEvent'RecordedEvent'MetadataEntry'value = Data.ProtoLens.fieldDefault,
         _ReadResp'ReadEvent'RecordedEvent'MetadataEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ReadResp'ReadEvent'RecordedEvent'MetadataEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser ReadResp'ReadEvent'RecordedEvent'MetadataEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MetadataEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ReadResp'ReadEvent'RecordedEvent'MetadataEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ReadResp'ReadEvent'RecordedEvent'MetadataEntry'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_ReadResp'ReadEvent'RecordedEvent'MetadataEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_ReadResp'ReadEvent'RecordedEvent'MetadataEntry'value x__) ()))
{- | Fields :
     
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.subscriptionId' @:: Lens' ReadResp'SubscriptionConfirmation Data.Text.Text@ -}
data ReadResp'SubscriptionConfirmation
  = ReadResp'SubscriptionConfirmation'_constructor {_ReadResp'SubscriptionConfirmation'subscriptionId :: !Data.Text.Text,
                                                    _ReadResp'SubscriptionConfirmation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ReadResp'SubscriptionConfirmation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ReadResp'SubscriptionConfirmation "subscriptionId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadResp'SubscriptionConfirmation'subscriptionId
           (\ x__ y__
              -> x__ {_ReadResp'SubscriptionConfirmation'subscriptionId = y__}))
        Prelude.id
instance Data.ProtoLens.Message ReadResp'SubscriptionConfirmation where
  messageName _
    = Data.Text.pack
        "event_store.client.persistent_subscriptions.ReadResp.SubscriptionConfirmation"
  fieldsByTag
    = let
        subscriptionId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "subscription_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"subscriptionId")) ::
              Data.ProtoLens.FieldDescriptor ReadResp'SubscriptionConfirmation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, subscriptionId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ReadResp'SubscriptionConfirmation'_unknownFields
        (\ x__ y__
           -> x__ {_ReadResp'SubscriptionConfirmation'_unknownFields = y__})
  defMessage
    = ReadResp'SubscriptionConfirmation'_constructor
        {_ReadResp'SubscriptionConfirmation'subscriptionId = Data.ProtoLens.fieldDefault,
         _ReadResp'SubscriptionConfirmation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ReadResp'SubscriptionConfirmation
          -> Data.ProtoLens.Encoding.Bytes.Parser ReadResp'SubscriptionConfirmation
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "subscription_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"subscriptionId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SubscriptionConfirmation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"subscriptionId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ReadResp'SubscriptionConfirmation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ReadResp'SubscriptionConfirmation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ReadResp'SubscriptionConfirmation'subscriptionId x__) ())
{- | Fields :
     
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.options' @:: Lens' UpdateReq UpdateReq'Options@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'options' @:: Lens' UpdateReq (Prelude.Maybe UpdateReq'Options)@ -}
data UpdateReq
  = UpdateReq'_constructor {_UpdateReq'options :: !(Prelude.Maybe UpdateReq'Options),
                            _UpdateReq'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UpdateReq where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UpdateReq "options" UpdateReq'Options where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'options (\ x__ y__ -> x__ {_UpdateReq'options = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UpdateReq "maybe'options" (Prelude.Maybe UpdateReq'Options) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'options (\ x__ y__ -> x__ {_UpdateReq'options = y__}))
        Prelude.id
instance Data.ProtoLens.Message UpdateReq where
  messageName _
    = Data.Text.pack
        "event_store.client.persistent_subscriptions.UpdateReq"
  fieldsByTag
    = let
        options__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UpdateReq'Options)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'options")) ::
              Data.ProtoLens.FieldDescriptor UpdateReq
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, options__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UpdateReq'_unknownFields
        (\ x__ y__ -> x__ {_UpdateReq'_unknownFields = y__})
  defMessage
    = UpdateReq'_constructor
        {_UpdateReq'options = Prelude.Nothing,
         _UpdateReq'_unknownFields = []}
  parseMessage
    = let
        loop :: UpdateReq -> Data.ProtoLens.Encoding.Bytes.Parser UpdateReq
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "options"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"options") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UpdateReq"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'options") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData UpdateReq where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UpdateReq'_unknownFields x__)
             (Control.DeepSeq.deepseq (_UpdateReq'options x__) ())
newtype UpdateReq'ConsumerStrategy'UnrecognizedValue
  = UpdateReq'ConsumerStrategy'UnrecognizedValue Data.Int.Int32
  deriving (Prelude.Eq, Prelude.Ord, Prelude.Show)
data UpdateReq'ConsumerStrategy
  = UpdateReq'DispatchToSingle |
    UpdateReq'RoundRobin |
    UpdateReq'Pinned |
    UpdateReq'ConsumerStrategy'Unrecognized !UpdateReq'ConsumerStrategy'UnrecognizedValue
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum UpdateReq'ConsumerStrategy where
  maybeToEnum 0 = Prelude.Just UpdateReq'DispatchToSingle
  maybeToEnum 1 = Prelude.Just UpdateReq'RoundRobin
  maybeToEnum 2 = Prelude.Just UpdateReq'Pinned
  maybeToEnum k
    = Prelude.Just
        (UpdateReq'ConsumerStrategy'Unrecognized
           (UpdateReq'ConsumerStrategy'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum UpdateReq'DispatchToSingle = "DispatchToSingle"
  showEnum UpdateReq'RoundRobin = "RoundRobin"
  showEnum UpdateReq'Pinned = "Pinned"
  showEnum
    (UpdateReq'ConsumerStrategy'Unrecognized (UpdateReq'ConsumerStrategy'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "DispatchToSingle"
    = Prelude.Just UpdateReq'DispatchToSingle
    | (Prelude.==) k "RoundRobin" = Prelude.Just UpdateReq'RoundRobin
    | (Prelude.==) k "Pinned" = Prelude.Just UpdateReq'Pinned
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded UpdateReq'ConsumerStrategy where
  minBound = UpdateReq'DispatchToSingle
  maxBound = UpdateReq'Pinned
instance Prelude.Enum UpdateReq'ConsumerStrategy where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ConsumerStrategy: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum UpdateReq'DispatchToSingle = 0
  fromEnum UpdateReq'RoundRobin = 1
  fromEnum UpdateReq'Pinned = 2
  fromEnum
    (UpdateReq'ConsumerStrategy'Unrecognized (UpdateReq'ConsumerStrategy'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ UpdateReq'Pinned
    = Prelude.error
        "UpdateReq'ConsumerStrategy.succ: bad argument UpdateReq'Pinned. This value would be out of bounds."
  succ UpdateReq'DispatchToSingle = UpdateReq'RoundRobin
  succ UpdateReq'RoundRobin = UpdateReq'Pinned
  succ (UpdateReq'ConsumerStrategy'Unrecognized _)
    = Prelude.error
        "UpdateReq'ConsumerStrategy.succ: bad argument: unrecognized value"
  pred UpdateReq'DispatchToSingle
    = Prelude.error
        "UpdateReq'ConsumerStrategy.pred: bad argument UpdateReq'DispatchToSingle. This value would be out of bounds."
  pred UpdateReq'RoundRobin = UpdateReq'DispatchToSingle
  pred UpdateReq'Pinned = UpdateReq'RoundRobin
  pred (UpdateReq'ConsumerStrategy'Unrecognized _)
    = Prelude.error
        "UpdateReq'ConsumerStrategy.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault UpdateReq'ConsumerStrategy where
  fieldDefault = UpdateReq'DispatchToSingle
instance Control.DeepSeq.NFData UpdateReq'ConsumerStrategy where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.streamIdentifier' @:: Lens' UpdateReq'Options Proto.Shared.StreamIdentifier@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'streamIdentifier' @:: Lens' UpdateReq'Options (Prelude.Maybe Proto.Shared.StreamIdentifier)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.groupName' @:: Lens' UpdateReq'Options Data.Text.Text@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.settings' @:: Lens' UpdateReq'Options UpdateReq'Settings@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'settings' @:: Lens' UpdateReq'Options (Prelude.Maybe UpdateReq'Settings)@ -}
data UpdateReq'Options
  = UpdateReq'Options'_constructor {_UpdateReq'Options'streamIdentifier :: !(Prelude.Maybe Database.EventStore.Grpc.Wire.Shared.StreamIdentifier),
                                    _UpdateReq'Options'groupName :: !Data.Text.Text,
                                    _UpdateReq'Options'settings :: !(Prelude.Maybe UpdateReq'Settings),
                                    _UpdateReq'Options'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UpdateReq'Options where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UpdateReq'Options "streamIdentifier" Database.EventStore.Grpc.Wire.Shared.StreamIdentifier where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Options'streamIdentifier
           (\ x__ y__ -> x__ {_UpdateReq'Options'streamIdentifier = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UpdateReq'Options "maybe'streamIdentifier" (Prelude.Maybe Database.EventStore.Grpc.Wire.Shared.StreamIdentifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Options'streamIdentifier
           (\ x__ y__ -> x__ {_UpdateReq'Options'streamIdentifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateReq'Options "groupName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Options'groupName
           (\ x__ y__ -> x__ {_UpdateReq'Options'groupName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateReq'Options "settings" UpdateReq'Settings where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Options'settings
           (\ x__ y__ -> x__ {_UpdateReq'Options'settings = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UpdateReq'Options "maybe'settings" (Prelude.Maybe UpdateReq'Settings) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Options'settings
           (\ x__ y__ -> x__ {_UpdateReq'Options'settings = y__}))
        Prelude.id
instance Data.ProtoLens.Message UpdateReq'Options where
  messageName _
    = Data.Text.pack
        "event_store.client.persistent_subscriptions.UpdateReq.Options"
  fieldsByTag
    = let
        streamIdentifier__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stream_identifier"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Database.EventStore.Grpc.Wire.Shared.StreamIdentifier)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'streamIdentifier")) ::
              Data.ProtoLens.FieldDescriptor UpdateReq'Options
        groupName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupName")) ::
              Data.ProtoLens.FieldDescriptor UpdateReq'Options
        settings__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "settings"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UpdateReq'Settings)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'settings")) ::
              Data.ProtoLens.FieldDescriptor UpdateReq'Options
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, streamIdentifier__field_descriptor),
           (Data.ProtoLens.Tag 2, groupName__field_descriptor),
           (Data.ProtoLens.Tag 3, settings__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UpdateReq'Options'_unknownFields
        (\ x__ y__ -> x__ {_UpdateReq'Options'_unknownFields = y__})
  defMessage
    = UpdateReq'Options'_constructor
        {_UpdateReq'Options'streamIdentifier = Prelude.Nothing,
         _UpdateReq'Options'groupName = Data.ProtoLens.fieldDefault,
         _UpdateReq'Options'settings = Prelude.Nothing,
         _UpdateReq'Options'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UpdateReq'Options
          -> Data.ProtoLens.Encoding.Bytes.Parser UpdateReq'Options
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "stream_identifier"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"streamIdentifier") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "group_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupName") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "settings"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"settings") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Options"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'streamIdentifier") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"groupName") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8
                            _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'settings") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage
                                _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData UpdateReq'Options where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UpdateReq'Options'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UpdateReq'Options'streamIdentifier x__)
                (Control.DeepSeq.deepseq
                   (_UpdateReq'Options'groupName x__)
                   (Control.DeepSeq.deepseq (_UpdateReq'Options'settings x__) ())))
{- | Fields :
     
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.resolveLinks' @:: Lens' UpdateReq'Settings Prelude.Bool@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.revision' @:: Lens' UpdateReq'Settings Data.Word.Word64@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.extraStatistics' @:: Lens' UpdateReq'Settings Prelude.Bool@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maxRetryCount' @:: Lens' UpdateReq'Settings Data.Int.Int32@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.minCheckpointCount' @:: Lens' UpdateReq'Settings Data.Int.Int32@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maxCheckpointCount' @:: Lens' UpdateReq'Settings Data.Int.Int32@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maxSubscriberCount' @:: Lens' UpdateReq'Settings Data.Int.Int32@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.liveBufferSize' @:: Lens' UpdateReq'Settings Data.Int.Int32@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.readBatchSize' @:: Lens' UpdateReq'Settings Data.Int.Int32@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.historyBufferSize' @:: Lens' UpdateReq'Settings Data.Int.Int32@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.namedConsumerStrategy' @:: Lens' UpdateReq'Settings UpdateReq'ConsumerStrategy@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'messageTimeout' @:: Lens' UpdateReq'Settings (Prelude.Maybe UpdateReq'Settings'MessageTimeout)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'messageTimeoutTicks' @:: Lens' UpdateReq'Settings (Prelude.Maybe Data.Int.Int64)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.messageTimeoutTicks' @:: Lens' UpdateReq'Settings Data.Int.Int64@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'messageTimeoutMs' @:: Lens' UpdateReq'Settings (Prelude.Maybe Data.Int.Int32)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.messageTimeoutMs' @:: Lens' UpdateReq'Settings Data.Int.Int32@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'checkpointAfter' @:: Lens' UpdateReq'Settings (Prelude.Maybe UpdateReq'Settings'CheckpointAfter)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'checkpointAfterTicks' @:: Lens' UpdateReq'Settings (Prelude.Maybe Data.Int.Int64)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.checkpointAfterTicks' @:: Lens' UpdateReq'Settings Data.Int.Int64@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.maybe'checkpointAfterMs' @:: Lens' UpdateReq'Settings (Prelude.Maybe Data.Int.Int32)@
         * 'Database.EventStore.Grpc.Wire.Persistent_Fields.checkpointAfterMs' @:: Lens' UpdateReq'Settings Data.Int.Int32@ -}
data UpdateReq'Settings
  = UpdateReq'Settings'_constructor {_UpdateReq'Settings'resolveLinks :: !Prelude.Bool,
                                     _UpdateReq'Settings'revision :: !Data.Word.Word64,
                                     _UpdateReq'Settings'extraStatistics :: !Prelude.Bool,
                                     _UpdateReq'Settings'maxRetryCount :: !Data.Int.Int32,
                                     _UpdateReq'Settings'minCheckpointCount :: !Data.Int.Int32,
                                     _UpdateReq'Settings'maxCheckpointCount :: !Data.Int.Int32,
                                     _UpdateReq'Settings'maxSubscriberCount :: !Data.Int.Int32,
                                     _UpdateReq'Settings'liveBufferSize :: !Data.Int.Int32,
                                     _UpdateReq'Settings'readBatchSize :: !Data.Int.Int32,
                                     _UpdateReq'Settings'historyBufferSize :: !Data.Int.Int32,
                                     _UpdateReq'Settings'namedConsumerStrategy :: !UpdateReq'ConsumerStrategy,
                                     _UpdateReq'Settings'messageTimeout :: !(Prelude.Maybe UpdateReq'Settings'MessageTimeout),
                                     _UpdateReq'Settings'checkpointAfter :: !(Prelude.Maybe UpdateReq'Settings'CheckpointAfter),
                                     _UpdateReq'Settings'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UpdateReq'Settings where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data UpdateReq'Settings'MessageTimeout
  = UpdateReq'Settings'MessageTimeoutTicks !Data.Int.Int64 |
    UpdateReq'Settings'MessageTimeoutMs !Data.Int.Int32
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
data UpdateReq'Settings'CheckpointAfter
  = UpdateReq'Settings'CheckpointAfterTicks !Data.Int.Int64 |
    UpdateReq'Settings'CheckpointAfterMs !Data.Int.Int32
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField UpdateReq'Settings "resolveLinks" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Settings'resolveLinks
           (\ x__ y__ -> x__ {_UpdateReq'Settings'resolveLinks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateReq'Settings "revision" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Settings'revision
           (\ x__ y__ -> x__ {_UpdateReq'Settings'revision = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateReq'Settings "extraStatistics" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Settings'extraStatistics
           (\ x__ y__ -> x__ {_UpdateReq'Settings'extraStatistics = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateReq'Settings "maxRetryCount" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Settings'maxRetryCount
           (\ x__ y__ -> x__ {_UpdateReq'Settings'maxRetryCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateReq'Settings "minCheckpointCount" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Settings'minCheckpointCount
           (\ x__ y__ -> x__ {_UpdateReq'Settings'minCheckpointCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateReq'Settings "maxCheckpointCount" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Settings'maxCheckpointCount
           (\ x__ y__ -> x__ {_UpdateReq'Settings'maxCheckpointCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateReq'Settings "maxSubscriberCount" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Settings'maxSubscriberCount
           (\ x__ y__ -> x__ {_UpdateReq'Settings'maxSubscriberCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateReq'Settings "liveBufferSize" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Settings'liveBufferSize
           (\ x__ y__ -> x__ {_UpdateReq'Settings'liveBufferSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateReq'Settings "readBatchSize" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Settings'readBatchSize
           (\ x__ y__ -> x__ {_UpdateReq'Settings'readBatchSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateReq'Settings "historyBufferSize" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Settings'historyBufferSize
           (\ x__ y__ -> x__ {_UpdateReq'Settings'historyBufferSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateReq'Settings "namedConsumerStrategy" UpdateReq'ConsumerStrategy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Settings'namedConsumerStrategy
           (\ x__ y__
              -> x__ {_UpdateReq'Settings'namedConsumerStrategy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateReq'Settings "maybe'messageTimeout" (Prelude.Maybe UpdateReq'Settings'MessageTimeout) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Settings'messageTimeout
           (\ x__ y__ -> x__ {_UpdateReq'Settings'messageTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateReq'Settings "maybe'messageTimeoutTicks" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Settings'messageTimeout
           (\ x__ y__ -> x__ {_UpdateReq'Settings'messageTimeout = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (UpdateReq'Settings'MessageTimeoutTicks x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap UpdateReq'Settings'MessageTimeoutTicks y__))
instance Data.ProtoLens.Field.HasField UpdateReq'Settings "messageTimeoutTicks" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Settings'messageTimeout
           (\ x__ y__ -> x__ {_UpdateReq'Settings'messageTimeout = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (UpdateReq'Settings'MessageTimeoutTicks x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap UpdateReq'Settings'MessageTimeoutTicks y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField UpdateReq'Settings "maybe'messageTimeoutMs" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Settings'messageTimeout
           (\ x__ y__ -> x__ {_UpdateReq'Settings'messageTimeout = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (UpdateReq'Settings'MessageTimeoutMs x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap UpdateReq'Settings'MessageTimeoutMs y__))
instance Data.ProtoLens.Field.HasField UpdateReq'Settings "messageTimeoutMs" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Settings'messageTimeout
           (\ x__ y__ -> x__ {_UpdateReq'Settings'messageTimeout = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (UpdateReq'Settings'MessageTimeoutMs x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap UpdateReq'Settings'MessageTimeoutMs y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField UpdateReq'Settings "maybe'checkpointAfter" (Prelude.Maybe UpdateReq'Settings'CheckpointAfter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Settings'checkpointAfter
           (\ x__ y__ -> x__ {_UpdateReq'Settings'checkpointAfter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdateReq'Settings "maybe'checkpointAfterTicks" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Settings'checkpointAfter
           (\ x__ y__ -> x__ {_UpdateReq'Settings'checkpointAfter = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (UpdateReq'Settings'CheckpointAfterTicks x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap UpdateReq'Settings'CheckpointAfterTicks y__))
instance Data.ProtoLens.Field.HasField UpdateReq'Settings "checkpointAfterTicks" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Settings'checkpointAfter
           (\ x__ y__ -> x__ {_UpdateReq'Settings'checkpointAfter = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (UpdateReq'Settings'CheckpointAfterTicks x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap UpdateReq'Settings'CheckpointAfterTicks y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField UpdateReq'Settings "maybe'checkpointAfterMs" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Settings'checkpointAfter
           (\ x__ y__ -> x__ {_UpdateReq'Settings'checkpointAfter = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (UpdateReq'Settings'CheckpointAfterMs x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap UpdateReq'Settings'CheckpointAfterMs y__))
instance Data.ProtoLens.Field.HasField UpdateReq'Settings "checkpointAfterMs" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdateReq'Settings'checkpointAfter
           (\ x__ y__ -> x__ {_UpdateReq'Settings'checkpointAfter = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (UpdateReq'Settings'CheckpointAfterMs x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap UpdateReq'Settings'CheckpointAfterMs y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message UpdateReq'Settings where
  messageName _
    = Data.Text.pack
        "event_store.client.persistent_subscriptions.UpdateReq.Settings"
  fieldsByTag
    = let
        resolveLinks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resolve_links"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"resolveLinks")) ::
              Data.ProtoLens.FieldDescriptor UpdateReq'Settings
        revision__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "revision"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"revision")) ::
              Data.ProtoLens.FieldDescriptor UpdateReq'Settings
        extraStatistics__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extra_statistics"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"extraStatistics")) ::
              Data.ProtoLens.FieldDescriptor UpdateReq'Settings
        maxRetryCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_retry_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxRetryCount")) ::
              Data.ProtoLens.FieldDescriptor UpdateReq'Settings
        minCheckpointCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_checkpoint_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"minCheckpointCount")) ::
              Data.ProtoLens.FieldDescriptor UpdateReq'Settings
        maxCheckpointCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_checkpoint_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxCheckpointCount")) ::
              Data.ProtoLens.FieldDescriptor UpdateReq'Settings
        maxSubscriberCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_subscriber_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxSubscriberCount")) ::
              Data.ProtoLens.FieldDescriptor UpdateReq'Settings
        liveBufferSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "live_buffer_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"liveBufferSize")) ::
              Data.ProtoLens.FieldDescriptor UpdateReq'Settings
        readBatchSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "read_batch_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"readBatchSize")) ::
              Data.ProtoLens.FieldDescriptor UpdateReq'Settings
        historyBufferSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "history_buffer_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"historyBufferSize")) ::
              Data.ProtoLens.FieldDescriptor UpdateReq'Settings
        namedConsumerStrategy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "named_consumer_strategy"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor UpdateReq'ConsumerStrategy)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"namedConsumerStrategy")) ::
              Data.ProtoLens.FieldDescriptor UpdateReq'Settings
        messageTimeoutTicks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "message_timeout_ticks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'messageTimeoutTicks")) ::
              Data.ProtoLens.FieldDescriptor UpdateReq'Settings
        messageTimeoutMs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "message_timeout_ms"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'messageTimeoutMs")) ::
              Data.ProtoLens.FieldDescriptor UpdateReq'Settings
        checkpointAfterTicks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "checkpoint_after_ticks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'checkpointAfterTicks")) ::
              Data.ProtoLens.FieldDescriptor UpdateReq'Settings
        checkpointAfterMs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "checkpoint_after_ms"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'checkpointAfterMs")) ::
              Data.ProtoLens.FieldDescriptor UpdateReq'Settings
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, resolveLinks__field_descriptor),
           (Data.ProtoLens.Tag 2, revision__field_descriptor),
           (Data.ProtoLens.Tag 3, extraStatistics__field_descriptor),
           (Data.ProtoLens.Tag 5, maxRetryCount__field_descriptor),
           (Data.ProtoLens.Tag 7, minCheckpointCount__field_descriptor),
           (Data.ProtoLens.Tag 8, maxCheckpointCount__field_descriptor),
           (Data.ProtoLens.Tag 9, maxSubscriberCount__field_descriptor),
           (Data.ProtoLens.Tag 10, liveBufferSize__field_descriptor),
           (Data.ProtoLens.Tag 11, readBatchSize__field_descriptor),
           (Data.ProtoLens.Tag 12, historyBufferSize__field_descriptor),
           (Data.ProtoLens.Tag 13, namedConsumerStrategy__field_descriptor),
           (Data.ProtoLens.Tag 4, messageTimeoutTicks__field_descriptor),
           (Data.ProtoLens.Tag 14, messageTimeoutMs__field_descriptor),
           (Data.ProtoLens.Tag 6, checkpointAfterTicks__field_descriptor),
           (Data.ProtoLens.Tag 15, checkpointAfterMs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UpdateReq'Settings'_unknownFields
        (\ x__ y__ -> x__ {_UpdateReq'Settings'_unknownFields = y__})
  defMessage
    = UpdateReq'Settings'_constructor
        {_UpdateReq'Settings'resolveLinks = Data.ProtoLens.fieldDefault,
         _UpdateReq'Settings'revision = Data.ProtoLens.fieldDefault,
         _UpdateReq'Settings'extraStatistics = Data.ProtoLens.fieldDefault,
         _UpdateReq'Settings'maxRetryCount = Data.ProtoLens.fieldDefault,
         _UpdateReq'Settings'minCheckpointCount = Data.ProtoLens.fieldDefault,
         _UpdateReq'Settings'maxCheckpointCount = Data.ProtoLens.fieldDefault,
         _UpdateReq'Settings'maxSubscriberCount = Data.ProtoLens.fieldDefault,
         _UpdateReq'Settings'liveBufferSize = Data.ProtoLens.fieldDefault,
         _UpdateReq'Settings'readBatchSize = Data.ProtoLens.fieldDefault,
         _UpdateReq'Settings'historyBufferSize = Data.ProtoLens.fieldDefault,
         _UpdateReq'Settings'namedConsumerStrategy = Data.ProtoLens.fieldDefault,
         _UpdateReq'Settings'messageTimeout = Prelude.Nothing,
         _UpdateReq'Settings'checkpointAfter = Prelude.Nothing,
         _UpdateReq'Settings'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UpdateReq'Settings
          -> Data.ProtoLens.Encoding.Bytes.Parser UpdateReq'Settings
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "resolve_links"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"resolveLinks") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "revision"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"revision") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "extra_statistics"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"extraStatistics") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "max_retry_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxRetryCount") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "min_checkpoint_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"minCheckpointCount") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "max_checkpoint_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxCheckpointCount") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "max_subscriber_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxSubscriberCount") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "live_buffer_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"liveBufferSize") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "read_batch_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"readBatchSize") y x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "history_buffer_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"historyBufferSize") y x)
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "named_consumer_strategy"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"namedConsumerStrategy") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "message_timeout_ticks"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"messageTimeoutTicks") y x)
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "message_timeout_ms"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"messageTimeoutMs") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "checkpoint_after_ticks"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"checkpointAfterTicks") y x)
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "checkpoint_after_ms"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"checkpointAfterMs") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Settings"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"resolveLinks") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt
                         (\ b -> if b then 1 else 0)
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"revision") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"extraStatistics") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt
                               (\ b -> if b then 1 else 0)
                               _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"maxRetryCount") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"minCheckpointCount") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                     Prelude.fromIntegral
                                     _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"maxCheckpointCount") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        Prelude.fromIntegral
                                        _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"maxSubscriberCount") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           Prelude.fromIntegral
                                           _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"liveBufferSize") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                           ((Prelude..)
                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                              Prelude.fromIntegral
                                              _v))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"readBatchSize") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 Prelude.fromIntegral
                                                 _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"historyBufferSize")
                                                 _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                 ((Prelude..)
                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    Prelude.fromIntegral
                                                    _v))
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field
                                                       @"namedConsumerStrategy")
                                                    _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 104)
                                                    ((Prelude..)
                                                       ((Prelude..)
                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          Prelude.fromIntegral)
                                                       Prelude.fromEnum
                                                       _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'messageTimeout")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just (UpdateReq'Settings'MessageTimeoutTicks v))
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                                        ((Prelude..)
                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           Prelude.fromIntegral
                                                           v)
                                                 (Prelude.Just (UpdateReq'Settings'MessageTimeoutMs v))
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           112)
                                                        ((Prelude..)
                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           Prelude.fromIntegral
                                                           v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'checkpointAfter")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just (UpdateReq'Settings'CheckpointAfterTicks v))
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              48)
                                                           ((Prelude..)
                                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              Prelude.fromIntegral
                                                              v)
                                                    (Prelude.Just (UpdateReq'Settings'CheckpointAfterMs v))
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              120)
                                                           ((Prelude..)
                                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              Prelude.fromIntegral
                                                              v))
                                                 (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                    (Lens.Family2.view
                                                       Data.ProtoLens.unknownFields _x))))))))))))))
instance Control.DeepSeq.NFData UpdateReq'Settings where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UpdateReq'Settings'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UpdateReq'Settings'resolveLinks x__)
                (Control.DeepSeq.deepseq
                   (_UpdateReq'Settings'revision x__)
                   (Control.DeepSeq.deepseq
                      (_UpdateReq'Settings'extraStatistics x__)
                      (Control.DeepSeq.deepseq
                         (_UpdateReq'Settings'maxRetryCount x__)
                         (Control.DeepSeq.deepseq
                            (_UpdateReq'Settings'minCheckpointCount x__)
                            (Control.DeepSeq.deepseq
                               (_UpdateReq'Settings'maxCheckpointCount x__)
                               (Control.DeepSeq.deepseq
                                  (_UpdateReq'Settings'maxSubscriberCount x__)
                                  (Control.DeepSeq.deepseq
                                     (_UpdateReq'Settings'liveBufferSize x__)
                                     (Control.DeepSeq.deepseq
                                        (_UpdateReq'Settings'readBatchSize x__)
                                        (Control.DeepSeq.deepseq
                                           (_UpdateReq'Settings'historyBufferSize x__)
                                           (Control.DeepSeq.deepseq
                                              (_UpdateReq'Settings'namedConsumerStrategy x__)
                                              (Control.DeepSeq.deepseq
                                                 (_UpdateReq'Settings'messageTimeout x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_UpdateReq'Settings'checkpointAfter x__)
                                                    ())))))))))))))
instance Control.DeepSeq.NFData UpdateReq'Settings'MessageTimeout where
  rnf (UpdateReq'Settings'MessageTimeoutTicks x__)
    = Control.DeepSeq.rnf x__
  rnf (UpdateReq'Settings'MessageTimeoutMs x__)
    = Control.DeepSeq.rnf x__
instance Control.DeepSeq.NFData UpdateReq'Settings'CheckpointAfter where
  rnf (UpdateReq'Settings'CheckpointAfterTicks x__)
    = Control.DeepSeq.rnf x__
  rnf (UpdateReq'Settings'CheckpointAfterMs x__)
    = Control.DeepSeq.rnf x__
_UpdateReq'Settings'MessageTimeoutTicks ::
  Data.ProtoLens.Prism.Prism' UpdateReq'Settings'MessageTimeout Data.Int.Int64
_UpdateReq'Settings'MessageTimeoutTicks
  = Data.ProtoLens.Prism.prism'
      UpdateReq'Settings'MessageTimeoutTicks
      (\ p__
         -> case p__ of
              (UpdateReq'Settings'MessageTimeoutTicks p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_UpdateReq'Settings'MessageTimeoutMs ::
  Data.ProtoLens.Prism.Prism' UpdateReq'Settings'MessageTimeout Data.Int.Int32
_UpdateReq'Settings'MessageTimeoutMs
  = Data.ProtoLens.Prism.prism'
      UpdateReq'Settings'MessageTimeoutMs
      (\ p__
         -> case p__ of
              (UpdateReq'Settings'MessageTimeoutMs p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_UpdateReq'Settings'CheckpointAfterTicks ::
  Data.ProtoLens.Prism.Prism' UpdateReq'Settings'CheckpointAfter Data.Int.Int64
_UpdateReq'Settings'CheckpointAfterTicks
  = Data.ProtoLens.Prism.prism'
      UpdateReq'Settings'CheckpointAfterTicks
      (\ p__
         -> case p__ of
              (UpdateReq'Settings'CheckpointAfterTicks p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_UpdateReq'Settings'CheckpointAfterMs ::
  Data.ProtoLens.Prism.Prism' UpdateReq'Settings'CheckpointAfter Data.Int.Int32
_UpdateReq'Settings'CheckpointAfterMs
  = Data.ProtoLens.Prism.prism'
      UpdateReq'Settings'CheckpointAfterMs
      (\ p__
         -> case p__ of
              (UpdateReq'Settings'CheckpointAfterMs p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
      -}
data UpdateResp
  = UpdateResp'_constructor {_UpdateResp'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UpdateResp where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message UpdateResp where
  messageName _
    = Data.Text.pack
        "event_store.client.persistent_subscriptions.UpdateResp"
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UpdateResp'_unknownFields
        (\ x__ y__ -> x__ {_UpdateResp'_unknownFields = y__})
  defMessage
    = UpdateResp'_constructor {_UpdateResp'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UpdateResp -> Data.ProtoLens.Encoding.Bytes.Parser UpdateResp
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of {
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x) }
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UpdateResp"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData UpdateResp where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_UpdateResp'_unknownFields x__) ()
data PersistentSubscriptions = PersistentSubscriptions {}
instance Data.ProtoLens.Service.Types.Service PersistentSubscriptions where
  type ServiceName PersistentSubscriptions = "PersistentSubscriptions"
  type ServicePackage PersistentSubscriptions = "event_store.client.persistent_subscriptions"
  type ServiceMethods PersistentSubscriptions = '["create",
                                                  "delete",
                                                  "read",
                                                  "update"]
instance Data.ProtoLens.Service.Types.HasMethodImpl PersistentSubscriptions "create" where
  type MethodName PersistentSubscriptions "create" = "Create"
  type MethodInput PersistentSubscriptions "create" = CreateReq
  type MethodOutput PersistentSubscriptions "create" = CreateResp
  type MethodStreamingType PersistentSubscriptions "create" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl PersistentSubscriptions "update" where
  type MethodName PersistentSubscriptions "update" = "Update"
  type MethodInput PersistentSubscriptions "update" = UpdateReq
  type MethodOutput PersistentSubscriptions "update" = UpdateResp
  type MethodStreamingType PersistentSubscriptions "update" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl PersistentSubscriptions "delete" where
  type MethodName PersistentSubscriptions "delete" = "Delete"
  type MethodInput PersistentSubscriptions "delete" = DeleteReq
  type MethodOutput PersistentSubscriptions "delete" = DeleteResp
  type MethodStreamingType PersistentSubscriptions "delete" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl PersistentSubscriptions "read" where
  type MethodName PersistentSubscriptions "read" = "Read"
  type MethodInput PersistentSubscriptions "read" = ReadReq
  type MethodOutput PersistentSubscriptions "read" = ReadResp
  type MethodStreamingType PersistentSubscriptions "read" = 'Data.ProtoLens.Service.Types.BiDiStreaming