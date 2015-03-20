-- Testing.hs
-- Simplest assertion functions ever ;)
module Hw.Utils.Testing where

import Hw.Utils.Console

assert :: Eq a => a -> a -> Bool
assert expected value = expected == value

assertEqual :: Eq a => String -> a -> a -> IO()
assertEqual message expected value = do
  let result = assert expected value
  putStrLn $ "      " ++ " " ++ message ++ " " ++ (boolToStr result)
      where boolToStr True  = "\r[ " ++ wrapGreen "OK" ++ " ]"
            boolToStr False = "\r[" ++ wrapRed "FAIL" ++ "\x1b[0m" ++ "]"

assertTrue :: String -> Bool -> IO()
assertTrue message value = assertEqual message True value

assertFalse :: String -> Bool -> IO()
assertFalse message value = assertEqual message False value
