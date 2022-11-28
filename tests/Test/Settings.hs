--------------------------------------------------------------------------------
-- |
-- Module : Test.Settings
-- Copyright : (C) 2022 Yorick Laupa
-- License : (see the file LICENSE)
--
-- Maintainer : Yorick Laupa <yo.eight@gmail.com>
-- Stability : provisional
-- Portability : non-portable
--
--------------------------------------------------------------------------------
module Test.Settings (spec) where

--------------------------------------------------------------------------------
import Control.Monad.Fail (fail)

--------------------------------------------------------------------------------
import Database.EventStore.Internal.Test hiding (i)

--------------------------------------------------------------------------------
import Test.Common
import Test.Hspec (Spec, specify, example)
import Test.Tasty.Hspec
import Test.Tasty.HUnit

--------------------------------------------------------------------------------
spec :: Spec
spec = do
    specify "Should parse a connection string with gossip seeds" $ example $ do
        let out = runConnectionStringParser "esdb://admin:changeit@node1:2113,node2:2113,node3:2113?tls=true"
        case out of
            Left s -> fail $ show s
            Right setts -> print setts
