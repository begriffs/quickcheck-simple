module Tests where

import Test.QuickCheck.All

prop_identity :: Int -> Bool
prop_identity i = i == i

----------------------------------------------------------------------
return []
runTests :: IO Bool
runTests = $quickCheckAll
