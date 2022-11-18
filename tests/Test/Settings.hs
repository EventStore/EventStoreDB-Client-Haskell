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
import Database.EventStore.Internal.Test hiding (i)

--------------------------------------------------------------------------------
import Test.Common
import Test.Hspec (Spec, specify, example)
import Test.Tasty.Hspec

--------------------------------------------------------------------------------
spec :: Spec
spec = do
    specify "Should parse a connection string with gossip seeds" $ example $ do
        parseSettings
        return ()
