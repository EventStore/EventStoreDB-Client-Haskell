--------------------------------------------------------------------------------
-- |
-- Module : Database.EventStore.Internal.Settings
-- Copyright : (C) 2017 Yorick Laupa
-- License : (see the file LICENSE)
--
-- Maintainer : Yorick Laupa <yo.eight@gmail.com>
-- Stability : provisional
-- Portability : non-portable
--
--------------------------------------------------------------------------------
module Database.EventStore.Internal.Settings where

--------------------------------------------------------------------------------
import Control.Monad.Fail (fail)
import qualified Data.Char as Char
import Data.Bifunctor (first)
import Data.Functor (($>))

--------------------------------------------------------------------------------
import Network.Connection (TLSSettings)
import qualified Data.Attoparsec.Text as Atto

--------------------------------------------------------------------------------
import Database.EventStore.Internal.Logger
import Database.EventStore.Internal.Prelude

--------------------------------------------------------------------------------
-- Flag
--------------------------------------------------------------------------------
-- | Indicates either a 'Package' contains 'Credentials' data or not.
data Flag
    = None
    | Authenticated
    deriving Show

--------------------------------------------------------------------------------
-- | Maps a 'Flag' into a 'Word8' understandable by the server.
flagWord8 :: Flag -> Word8
flagWord8 None          = 0x00
flagWord8 Authenticated = 0x01

--------------------------------------------------------------------------------
-- Credentials
--------------------------------------------------------------------------------
-- | Holds login and password information.
data Credentials
    = Credentials
      { credLogin    :: !ByteString
      , credPassword :: !ByteString
      }
    deriving (Eq, Show)

--------------------------------------------------------------------------------
-- | Creates a 'Credentials' given a login and a password.
credentials :: ByteString -- ^ Login
            -> ByteString -- ^ Password
            -> Credentials
credentials = Credentials

--------------------------------------------------------------------------------
-- | Represents reconnection strategy.
data Retry
    = AtMost Int
    | KeepRetrying

--------------------------------------------------------------------------------
-- | Indicates how many times we should try to reconnect to the server. A value
--   less than or equal to 0 means no retry.
atMost :: Int -> Retry
atMost = AtMost

--------------------------------------------------------------------------------
-- | Indicates we should try to reconnect to the server until the end of the
--   Universe.
keepRetrying :: Retry
keepRetrying = KeepRetrying

--------------------------------------------------------------------------------
-- | Gathers every connection type handled by the client.
data DiscoveryMode
    = StaticDiscovery GossipSeedEndpoint
      -- ^ HostName and Port.
    | ClusterDiscovery [GossipSeedEndpoint]
      -- ^ Domain name, optional DNS server and port.
    deriving Show

--------------------------------------------------------------------------------
data GossipSeedEndpoint
  = GossipSeedEndpoint
  { gossipSeedEndpointHost :: Text
  , gossipSeedEndpointPort :: Int
  } deriving (Eq, Show)

--------------------------------------------------------------------------------
data NewSettings =
  NewSettings
  { newSettingsDiscovery :: DiscoveryMode
  , newSettingsOld       :: Settings
  }
--------------------------------------------------------------------------------
instance Show NewSettings where
  show (NewSettings disc _) = show disc

--------------------------------------------------------------------------------
-- | Global 'Connection' settings
data Settings
    = Settings
      { s_heartbeatInterval :: NominalDiffTime
        -- ^ Maximum delay of inactivity before the client sends a heartbeat
        --   request.
      , s_heartbeatTimeout :: NominalDiffTime
        -- ^ Maximum delay the server has to issue a heartbeat response.
      , s_requireMaster :: Bool
        -- ^ On a cluster settings. Requires the master node when performing a
        --   write operation.
      , s_retry :: Retry
        -- ^ Retry strategy when failing to connect.
      , s_reconnect_delay :: NominalDiffTime
        -- ^ Delay before issuing a new connection request.
      , s_ssl :: Maybe TLSSettings
        -- ^ SSL settings.
      , s_loggerType :: LogType
        -- ^ Type of logging to use.
      , s_loggerFilter :: LoggerFilter
        -- ^ Restriction of what would be logged.
      , s_loggerDetailed :: Bool
        -- ^ Detailed logging output. Currently, it also indicates the location
        --   where the log occurred.
      , s_operationTimeout :: NominalDiffTime
        -- ^ Delay in which an operation will be retried if no response arrived.
      , s_operationRetry :: Retry
        -- ^ Retry strategy when an operation timeout.
      , s_monitoring :: MonitoringBackend
        -- ^ Monitoring backend abstraction. You could implement one targetting
        --   `ekg-core` for example. We will expose an `ekg-core` implementation
        --   as soon as `ekg-core` supports GHC 8.8.*.
      , s_defaultConnectionName :: Maybe Text
        -- ^ Default connection name.
      , s_defaultUserCredentials :: Maybe Credentials
        -- ^ 'Credentials' to use for operations where other 'Credentials' are
        --   not explicitly supplied.
      }

--------------------------------------------------------------------------------
-- | Default global settings.
--
--   * 's_heartbeatInterval'      = 750 ms
--   * 's_heartbeatTimeout'       = 1500 ms
--   * 's_requireMaster'          = 'True'
--   * 's_retry'                  = 'atMost' 3
--   * 's_reconnect_delay'        = 3 seconds
--   * 's_ssl'                    = 'Nothing'
--   * 's_loggerType'             = 'LogNone'
--   * 's_loggerFilter'           = 'LoggerLevel' 'LevelInfo'
--   * 's_loggerDetailed'         = 'False'
--   * 's_operationTimeout'       = 10 seconds
--   * 's_operationRetry'         = 'atMost' 3
--   * 's_monitoring'             = 'noopMonitoringBackend'
--   * 's_defaultConnectionName'  = 'Nothing'
--   * 's_defaultUserCredentials' = 'Nothing'
defaultSettings :: Settings
defaultSettings  = Settings
                   { s_heartbeatInterval      = msDiffTime 750  -- 750ms
                   , s_heartbeatTimeout       = msDiffTime 1500 -- 1500ms
                   , s_requireMaster          = True
                   , s_retry                  = atMost 3
                   , s_reconnect_delay        = 3
                   , s_ssl                    = Nothing
                   , s_loggerType             = LogNone
                   , s_loggerFilter           = LoggerLevel LevelInfo
                   , s_loggerDetailed         = False
                   , s_operationTimeout       = 10 -- secs
                   , s_operationRetry         = atMost 3
                   , s_monitoring             = noopMonitoringBackend
                   , s_defaultConnectionName  = Nothing
                   , s_defaultUserCredentials = Nothing
                   }
--------------------------------------------------------------------------------
data ConnectionMode = ConnectionSimpleMode | ConnectionDiscoveryMode

--------------------------------------------------------------------------------
runConnectionStringParser :: Text -> Either Text NewSettings
runConnectionStringParser = first fromString . Atto.parseOnly parseSettings

--------------------------------------------------------------------------------
parseSettings :: Atto.Parser NewSettings
parseSettings = do
  mode <- parseConnectionMode
  Atto.string "://"
  creds <- (fmap Just $ parseCredentials) <|> pure Nothing
  out <- go creds mode =<< Atto.sepBy1 parseSeed (Atto.char ',')
  -- Atto.endOfInput TODO: re-estate as soon as we are able to parse query strings.
  pure out
  where
    go creds ConnectionSimpleMode xss@(x:xs) =
      let setts = defaultSettings { s_defaultUserCredentials = creds } in
      case xs of
        [] -> pure $ NewSettings (StaticDiscovery x) setts
        _ -> pure $ NewSettings (ClusterDiscovery xss) setts
    go creds ConnectionDiscoveryMode [x] =
      let setts = defaultSettings { s_defaultUserCredentials = creds } in
      pure $ NewSettings (ClusterDiscovery [x]) setts
    go _ _ _ = fail "You can't have both discovery enable and multiple gossip seeds"

--------------------------------------------------------------------------------
parseConnectionMode :: Atto.Parser ConnectionMode
parseConnectionMode =
  (Atto.string "esdb+discover" $> ConnectionDiscoveryMode)
    <|> (Atto.string "esdb" $> ConnectionSimpleMode)

--------------------------------------------------------------------------------
parseLogin :: Atto.Parser Text
parseLogin = Atto.takeWhile1 valid
  where
    valid c =  Char.isAscii c && c /= ':'

--------------------------------------------------------------------------------
parseCredentials :: Atto.Parser Credentials
parseCredentials = do
  login <- parseLogin
  Atto.char ':'
  passw <- parsePassw
  Atto.char '@'
  pure $ Credentials (encodeUtf8 login) (encodeUtf8 passw)

--------------------------------------------------------------------------------
parsePassw :: Atto.Parser Text
parsePassw = Atto.takeWhile1 valid
  where
    valid c = c /= '@'

--------------------------------------------------------------------------------
parseSeed :: Atto.Parser GossipSeedEndpoint
parseSeed =
  GossipSeedEndpoint
    <$> parseHost
    <*> (Atto.option 2113 parsePort)

--------------------------------------------------------------------------------
parseHost :: Atto.Parser Text
parseHost = Atto.takeWhile1 valid
  where
    valid c = Char.isAlphaNum c || c == '_' || c == '-' || c == '.'

--------------------------------------------------------------------------------
parsePort :: Atto.Parser Int
parsePort = Atto.char ':' *> Atto.decimal

--------------------------------------------------------------------------------
-- | Default SSL settings based on 'defaultSettings'.
defaultSSLSettings :: TLSSettings -> Settings
defaultSSLSettings tls = defaultSettings { s_ssl = Just tls }

--------------------------------------------------------------------------------
-- | Millisecond timespan
msDiffTime :: Float -> NominalDiffTime
msDiffTime n = fromRational $ toRational (n / 1000)

--------------------------------------------------------------------------------
-- | Monitoring backend abstraction. Gathers all the metrics currently tracked
--   by the client. Used only by the TCP interface. Be careful as
--   'MonitoringBackend' is used in a very tight loop. Each
--   function must not throw any exception or the client will end in a broken
--   state.
data MonitoringBackend =
    MonitoringBackend
    { monitoringBackendIncrPkgCount :: IO ()
      -- ^ Called every time a TCP package is sent. We mean high-level TCP
      --   package, used in EventStore TCP protocol.
    , monitoringBackendIncrConnectionDrop :: IO ()
      -- ^ Called every time the client has lost the connection.
    , monitoringBackendAddDataTransmitted :: Int -> IO ()
      -- ^ When the client sends a TCP package, it calls that function by
      --   passing the size of the payload. The goal is to have a distrubtion
      --   of the amount of data exchanged with the server.
    , monitoringBackendIncrForceReconnect :: IO ()
      -- ^ Called every time the client is asked by a node to connect to
      --   another node. It happens only in cluster connection setting.
    , monitoringBackendIncrHeartbeatTimeouts :: IO ()
      -- ^ Called every time the client detects a heartbeat timeout from the
      --   server.
    }

--------------------------------------------------------------------------------
-- | A 'MonitoringBackend' that does nothing.
noopMonitoringBackend :: MonitoringBackend
noopMonitoringBackend =
    MonitoringBackend
    { monitoringBackendIncrPkgCount = pure ()
    , monitoringBackendIncrConnectionDrop = pure ()
    , monitoringBackendAddDataTransmitted = const (pure ())
    , monitoringBackendIncrForceReconnect = pure ()
    , monitoringBackendIncrHeartbeatTimeouts = pure ()
    }
