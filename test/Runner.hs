module Main where

import qualified Tests
import System.Exit

main :: IO ()
main = do
  good <- and <$> sequence [Tests.runTests]
  if good
     then exitSuccess
     else exitFailure
