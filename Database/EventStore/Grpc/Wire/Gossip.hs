{- This file was auto-generated from gossip.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Database.EventStore.Grpc.Wire.Gossip (
        Gossip(..), ClusterInfo(), EndPoint(), MemberInfo(),
        MemberInfo'VNodeState(..), MemberInfo'VNodeState(),
        MemberInfo'VNodeState'UnrecognizedValue
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
     
         * 'Database.EventStore.Grpc.Wire.Gossip_Fields.members' @:: Lens' ClusterInfo [MemberInfo]@
         * 'Database.EventStore.Grpc.Wire.Gossip_Fields.vec'members' @:: Lens' ClusterInfo (Data.Vector.Vector MemberInfo)@ -}
data ClusterInfo
  = ClusterInfo'_constructor {_ClusterInfo'members :: !(Data.Vector.Vector MemberInfo),
                              _ClusterInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClusterInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClusterInfo "members" [MemberInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterInfo'members
           (\ x__ y__ -> x__ {_ClusterInfo'members = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ClusterInfo "vec'members" (Data.Vector.Vector MemberInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterInfo'members
           (\ x__ y__ -> x__ {_ClusterInfo'members = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClusterInfo where
  messageName _
    = Data.Text.pack "event_store.client.gossip.ClusterInfo"
  fieldsByTag
    = let
        members__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "members"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MemberInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"members")) ::
              Data.ProtoLens.FieldDescriptor ClusterInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, members__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClusterInfo'_unknownFields
        (\ x__ y__ -> x__ {_ClusterInfo'_unknownFields = y__})
  defMessage
    = ClusterInfo'_constructor
        {_ClusterInfo'members = Data.Vector.Generic.empty,
         _ClusterInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClusterInfo
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld MemberInfo
             -> Data.ProtoLens.Encoding.Bytes.Parser ClusterInfo
        loop x mutable'members
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'members <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'members)
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
                              (Data.ProtoLens.Field.field @"vec'members") frozen'members x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "members"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'members y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'members
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'members <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'members)
          "ClusterInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'members") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ClusterInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClusterInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ClusterInfo'members x__) ())
{- | Fields :
     
         * 'Database.EventStore.Grpc.Wire.Gossip_Fields.address' @:: Lens' EndPoint Data.Text.Text@
         * 'Database.EventStore.Grpc.Wire.Gossip_Fields.port' @:: Lens' EndPoint Data.Word.Word32@ -}
data EndPoint
  = EndPoint'_constructor {_EndPoint'address :: !Data.Text.Text,
                           _EndPoint'port :: !Data.Word.Word32,
                           _EndPoint'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EndPoint where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EndPoint "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndPoint'address (\ x__ y__ -> x__ {_EndPoint'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EndPoint "port" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndPoint'port (\ x__ y__ -> x__ {_EndPoint'port = y__}))
        Prelude.id
instance Data.ProtoLens.Message EndPoint where
  messageName _ = Data.Text.pack "event_store.client.gossip.EndPoint"
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor EndPoint
        port__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "port"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"port")) ::
              Data.ProtoLens.FieldDescriptor EndPoint
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, port__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EndPoint'_unknownFields
        (\ x__ y__ -> x__ {_EndPoint'_unknownFields = y__})
  defMessage
    = EndPoint'_constructor
        {_EndPoint'address = Data.ProtoLens.fieldDefault,
         _EndPoint'port = Data.ProtoLens.fieldDefault,
         _EndPoint'_unknownFields = []}
  parseMessage
    = let
        loop :: EndPoint -> Data.ProtoLens.Encoding.Bytes.Parser EndPoint
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
                                       "address"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "port"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"port") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EndPoint"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"address") _x
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"port") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData EndPoint where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EndPoint'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EndPoint'address x__)
                (Control.DeepSeq.deepseq (_EndPoint'port x__) ()))
{- | Fields :
     
         * 'Database.EventStore.Grpc.Wire.Gossip_Fields.instanceId' @:: Lens' MemberInfo Proto.Shared.UUID@
         * 'Database.EventStore.Grpc.Wire.Gossip_Fields.maybe'instanceId' @:: Lens' MemberInfo (Prelude.Maybe Proto.Shared.UUID)@
         * 'Database.EventStore.Grpc.Wire.Gossip_Fields.timeStamp' @:: Lens' MemberInfo Data.Int.Int64@
         * 'Database.EventStore.Grpc.Wire.Gossip_Fields.state' @:: Lens' MemberInfo MemberInfo'VNodeState@
         * 'Database.EventStore.Grpc.Wire.Gossip_Fields.isAlive' @:: Lens' MemberInfo Prelude.Bool@
         * 'Database.EventStore.Grpc.Wire.Gossip_Fields.httpEndPoint' @:: Lens' MemberInfo EndPoint@
         * 'Database.EventStore.Grpc.Wire.Gossip_Fields.maybe'httpEndPoint' @:: Lens' MemberInfo (Prelude.Maybe EndPoint)@ -}
data MemberInfo
  = MemberInfo'_constructor {_MemberInfo'instanceId :: !(Prelude.Maybe Database.EventStore.Grpc.Wire.Shared.UUID),
                             _MemberInfo'timeStamp :: !Data.Int.Int64,
                             _MemberInfo'state :: !MemberInfo'VNodeState,
                             _MemberInfo'isAlive :: !Prelude.Bool,
                             _MemberInfo'httpEndPoint :: !(Prelude.Maybe EndPoint),
                             _MemberInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MemberInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MemberInfo "instanceId" Database.EventStore.Grpc.Wire.Shared.UUID where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MemberInfo'instanceId
           (\ x__ y__ -> x__ {_MemberInfo'instanceId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MemberInfo "maybe'instanceId" (Prelude.Maybe Database.EventStore.Grpc.Wire.Shared.UUID) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MemberInfo'instanceId
           (\ x__ y__ -> x__ {_MemberInfo'instanceId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MemberInfo "timeStamp" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MemberInfo'timeStamp
           (\ x__ y__ -> x__ {_MemberInfo'timeStamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MemberInfo "state" MemberInfo'VNodeState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MemberInfo'state (\ x__ y__ -> x__ {_MemberInfo'state = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MemberInfo "isAlive" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MemberInfo'isAlive (\ x__ y__ -> x__ {_MemberInfo'isAlive = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MemberInfo "httpEndPoint" EndPoint where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MemberInfo'httpEndPoint
           (\ x__ y__ -> x__ {_MemberInfo'httpEndPoint = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MemberInfo "maybe'httpEndPoint" (Prelude.Maybe EndPoint) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MemberInfo'httpEndPoint
           (\ x__ y__ -> x__ {_MemberInfo'httpEndPoint = y__}))
        Prelude.id
instance Data.ProtoLens.Message MemberInfo where
  messageName _
    = Data.Text.pack "event_store.client.gossip.MemberInfo"
  fieldsByTag
    = let
        instanceId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "instance_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Database.EventStore.Grpc.Wire.Shared.UUID)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'instanceId")) ::
              Data.ProtoLens.FieldDescriptor MemberInfo
        timeStamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time_stamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"timeStamp")) ::
              Data.ProtoLens.FieldDescriptor MemberInfo
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor MemberInfo'VNodeState)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"state")) ::
              Data.ProtoLens.FieldDescriptor MemberInfo
        isAlive__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_alive"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"isAlive")) ::
              Data.ProtoLens.FieldDescriptor MemberInfo
        httpEndPoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_end_point"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EndPoint)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'httpEndPoint")) ::
              Data.ProtoLens.FieldDescriptor MemberInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, instanceId__field_descriptor),
           (Data.ProtoLens.Tag 2, timeStamp__field_descriptor),
           (Data.ProtoLens.Tag 3, state__field_descriptor),
           (Data.ProtoLens.Tag 4, isAlive__field_descriptor),
           (Data.ProtoLens.Tag 5, httpEndPoint__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MemberInfo'_unknownFields
        (\ x__ y__ -> x__ {_MemberInfo'_unknownFields = y__})
  defMessage
    = MemberInfo'_constructor
        {_MemberInfo'instanceId = Prelude.Nothing,
         _MemberInfo'timeStamp = Data.ProtoLens.fieldDefault,
         _MemberInfo'state = Data.ProtoLens.fieldDefault,
         _MemberInfo'isAlive = Data.ProtoLens.fieldDefault,
         _MemberInfo'httpEndPoint = Prelude.Nothing,
         _MemberInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MemberInfo -> Data.ProtoLens.Encoding.Bytes.Parser MemberInfo
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
                                       "instance_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"instanceId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "time_stamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timeStamp") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "state"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"state") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_alive"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"isAlive") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http_end_point"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"httpEndPoint") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MemberInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'instanceId") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"timeStamp") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"state") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"isAlive") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0)
                                  _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'httpEndPoint") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage
                                      _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData MemberInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MemberInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MemberInfo'instanceId x__)
                (Control.DeepSeq.deepseq
                   (_MemberInfo'timeStamp x__)
                   (Control.DeepSeq.deepseq
                      (_MemberInfo'state x__)
                      (Control.DeepSeq.deepseq
                         (_MemberInfo'isAlive x__)
                         (Control.DeepSeq.deepseq (_MemberInfo'httpEndPoint x__) ())))))
newtype MemberInfo'VNodeState'UnrecognizedValue
  = MemberInfo'VNodeState'UnrecognizedValue Data.Int.Int32
  deriving (Prelude.Eq, Prelude.Ord, Prelude.Show)
data MemberInfo'VNodeState
  = MemberInfo'Initializing |
    MemberInfo'DiscoverLeader |
    MemberInfo'Unknown |
    MemberInfo'PreReplica |
    MemberInfo'CatchingUp |
    MemberInfo'Clone |
    MemberInfo'Follower |
    MemberInfo'PreLeader |
    MemberInfo'Leader |
    MemberInfo'Manager |
    MemberInfo'ShuttingDown |
    MemberInfo'Shutdown |
    MemberInfo'ReadOnlyLeaderless |
    MemberInfo'PreReadOnlyReplica |
    MemberInfo'ReadOnlyReplica |
    MemberInfo'ResigningLeader |
    MemberInfo'VNodeState'Unrecognized !MemberInfo'VNodeState'UnrecognizedValue
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum MemberInfo'VNodeState where
  maybeToEnum 0 = Prelude.Just MemberInfo'Initializing
  maybeToEnum 1 = Prelude.Just MemberInfo'DiscoverLeader
  maybeToEnum 2 = Prelude.Just MemberInfo'Unknown
  maybeToEnum 3 = Prelude.Just MemberInfo'PreReplica
  maybeToEnum 4 = Prelude.Just MemberInfo'CatchingUp
  maybeToEnum 5 = Prelude.Just MemberInfo'Clone
  maybeToEnum 6 = Prelude.Just MemberInfo'Follower
  maybeToEnum 7 = Prelude.Just MemberInfo'PreLeader
  maybeToEnum 8 = Prelude.Just MemberInfo'Leader
  maybeToEnum 9 = Prelude.Just MemberInfo'Manager
  maybeToEnum 10 = Prelude.Just MemberInfo'ShuttingDown
  maybeToEnum 11 = Prelude.Just MemberInfo'Shutdown
  maybeToEnum 12 = Prelude.Just MemberInfo'ReadOnlyLeaderless
  maybeToEnum 13 = Prelude.Just MemberInfo'PreReadOnlyReplica
  maybeToEnum 14 = Prelude.Just MemberInfo'ReadOnlyReplica
  maybeToEnum 15 = Prelude.Just MemberInfo'ResigningLeader
  maybeToEnum k
    = Prelude.Just
        (MemberInfo'VNodeState'Unrecognized
           (MemberInfo'VNodeState'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum MemberInfo'Initializing = "Initializing"
  showEnum MemberInfo'DiscoverLeader = "DiscoverLeader"
  showEnum MemberInfo'Unknown = "Unknown"
  showEnum MemberInfo'PreReplica = "PreReplica"
  showEnum MemberInfo'CatchingUp = "CatchingUp"
  showEnum MemberInfo'Clone = "Clone"
  showEnum MemberInfo'Follower = "Follower"
  showEnum MemberInfo'PreLeader = "PreLeader"
  showEnum MemberInfo'Leader = "Leader"
  showEnum MemberInfo'Manager = "Manager"
  showEnum MemberInfo'ShuttingDown = "ShuttingDown"
  showEnum MemberInfo'Shutdown = "Shutdown"
  showEnum MemberInfo'ReadOnlyLeaderless = "ReadOnlyLeaderless"
  showEnum MemberInfo'PreReadOnlyReplica = "PreReadOnlyReplica"
  showEnum MemberInfo'ReadOnlyReplica = "ReadOnlyReplica"
  showEnum MemberInfo'ResigningLeader = "ResigningLeader"
  showEnum
    (MemberInfo'VNodeState'Unrecognized (MemberInfo'VNodeState'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "Initializing"
    = Prelude.Just MemberInfo'Initializing
    | (Prelude.==) k "DiscoverLeader"
    = Prelude.Just MemberInfo'DiscoverLeader
    | (Prelude.==) k "Unknown" = Prelude.Just MemberInfo'Unknown
    | (Prelude.==) k "PreReplica" = Prelude.Just MemberInfo'PreReplica
    | (Prelude.==) k "CatchingUp" = Prelude.Just MemberInfo'CatchingUp
    | (Prelude.==) k "Clone" = Prelude.Just MemberInfo'Clone
    | (Prelude.==) k "Follower" = Prelude.Just MemberInfo'Follower
    | (Prelude.==) k "PreLeader" = Prelude.Just MemberInfo'PreLeader
    | (Prelude.==) k "Leader" = Prelude.Just MemberInfo'Leader
    | (Prelude.==) k "Manager" = Prelude.Just MemberInfo'Manager
    | (Prelude.==) k "ShuttingDown"
    = Prelude.Just MemberInfo'ShuttingDown
    | (Prelude.==) k "Shutdown" = Prelude.Just MemberInfo'Shutdown
    | (Prelude.==) k "ReadOnlyLeaderless"
    = Prelude.Just MemberInfo'ReadOnlyLeaderless
    | (Prelude.==) k "PreReadOnlyReplica"
    = Prelude.Just MemberInfo'PreReadOnlyReplica
    | (Prelude.==) k "ReadOnlyReplica"
    = Prelude.Just MemberInfo'ReadOnlyReplica
    | (Prelude.==) k "ResigningLeader"
    = Prelude.Just MemberInfo'ResigningLeader
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded MemberInfo'VNodeState where
  minBound = MemberInfo'Initializing
  maxBound = MemberInfo'ResigningLeader
instance Prelude.Enum MemberInfo'VNodeState where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum VNodeState: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum MemberInfo'Initializing = 0
  fromEnum MemberInfo'DiscoverLeader = 1
  fromEnum MemberInfo'Unknown = 2
  fromEnum MemberInfo'PreReplica = 3
  fromEnum MemberInfo'CatchingUp = 4
  fromEnum MemberInfo'Clone = 5
  fromEnum MemberInfo'Follower = 6
  fromEnum MemberInfo'PreLeader = 7
  fromEnum MemberInfo'Leader = 8
  fromEnum MemberInfo'Manager = 9
  fromEnum MemberInfo'ShuttingDown = 10
  fromEnum MemberInfo'Shutdown = 11
  fromEnum MemberInfo'ReadOnlyLeaderless = 12
  fromEnum MemberInfo'PreReadOnlyReplica = 13
  fromEnum MemberInfo'ReadOnlyReplica = 14
  fromEnum MemberInfo'ResigningLeader = 15
  fromEnum
    (MemberInfo'VNodeState'Unrecognized (MemberInfo'VNodeState'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ MemberInfo'ResigningLeader
    = Prelude.error
        "MemberInfo'VNodeState.succ: bad argument MemberInfo'ResigningLeader. This value would be out of bounds."
  succ MemberInfo'Initializing = MemberInfo'DiscoverLeader
  succ MemberInfo'DiscoverLeader = MemberInfo'Unknown
  succ MemberInfo'Unknown = MemberInfo'PreReplica
  succ MemberInfo'PreReplica = MemberInfo'CatchingUp
  succ MemberInfo'CatchingUp = MemberInfo'Clone
  succ MemberInfo'Clone = MemberInfo'Follower
  succ MemberInfo'Follower = MemberInfo'PreLeader
  succ MemberInfo'PreLeader = MemberInfo'Leader
  succ MemberInfo'Leader = MemberInfo'Manager
  succ MemberInfo'Manager = MemberInfo'ShuttingDown
  succ MemberInfo'ShuttingDown = MemberInfo'Shutdown
  succ MemberInfo'Shutdown = MemberInfo'ReadOnlyLeaderless
  succ MemberInfo'ReadOnlyLeaderless = MemberInfo'PreReadOnlyReplica
  succ MemberInfo'PreReadOnlyReplica = MemberInfo'ReadOnlyReplica
  succ MemberInfo'ReadOnlyReplica = MemberInfo'ResigningLeader
  succ (MemberInfo'VNodeState'Unrecognized _)
    = Prelude.error
        "MemberInfo'VNodeState.succ: bad argument: unrecognized value"
  pred MemberInfo'Initializing
    = Prelude.error
        "MemberInfo'VNodeState.pred: bad argument MemberInfo'Initializing. This value would be out of bounds."
  pred MemberInfo'DiscoverLeader = MemberInfo'Initializing
  pred MemberInfo'Unknown = MemberInfo'DiscoverLeader
  pred MemberInfo'PreReplica = MemberInfo'Unknown
  pred MemberInfo'CatchingUp = MemberInfo'PreReplica
  pred MemberInfo'Clone = MemberInfo'CatchingUp
  pred MemberInfo'Follower = MemberInfo'Clone
  pred MemberInfo'PreLeader = MemberInfo'Follower
  pred MemberInfo'Leader = MemberInfo'PreLeader
  pred MemberInfo'Manager = MemberInfo'Leader
  pred MemberInfo'ShuttingDown = MemberInfo'Manager
  pred MemberInfo'Shutdown = MemberInfo'ShuttingDown
  pred MemberInfo'ReadOnlyLeaderless = MemberInfo'Shutdown
  pred MemberInfo'PreReadOnlyReplica = MemberInfo'ReadOnlyLeaderless
  pred MemberInfo'ReadOnlyReplica = MemberInfo'PreReadOnlyReplica
  pred MemberInfo'ResigningLeader = MemberInfo'ReadOnlyReplica
  pred (MemberInfo'VNodeState'Unrecognized _)
    = Prelude.error
        "MemberInfo'VNodeState.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault MemberInfo'VNodeState where
  fieldDefault = MemberInfo'Initializing
instance Control.DeepSeq.NFData MemberInfo'VNodeState where
  rnf x__ = Prelude.seq x__ ()
data Gossip = Gossip {}
instance Data.ProtoLens.Service.Types.Service Gossip where
  type ServiceName Gossip = "Gossip"
  type ServicePackage Gossip = "event_store.client.gossip"
  type ServiceMethods Gossip = '["read"]
instance Data.ProtoLens.Service.Types.HasMethodImpl Gossip "read" where
  type MethodName Gossip "read" = "Read"
  type MethodInput Gossip "read" = Database.EventStore.Grpc.Wire.Shared.Empty
  type MethodOutput Gossip "read" = ClusterInfo
  type MethodStreamingType Gossip "read" = 'Data.ProtoLens.Service.Types.NonStreaming