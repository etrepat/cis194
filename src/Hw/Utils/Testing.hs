-- Testing.hs
-- Simplest assertion functions ever ;)
module Hw.Utils.Testing where

import Hw.Utils.Console

assert :: Eq a => a -> a -> Bool
assert expected value = expected == value

assertEqual :: (Eq a, Show a) => String -> a -> a -> IO()
assertEqual message expected value = do
  let
    boolToStr bv = "\r[" ++ (if bv then wrapGreen " OK " else wrapRed "FAIL") ++ "]"
    result = assert expected value

  putStrLn $ "      " ++ " " ++ message ++ " " ++ (boolToStr result)

  if not result
    then do
      putStrLn $ "Expected --> " ++ (wrapYellow (show expected))
      putStrLn $ "     Got --> " ++ (wrapRed (show value))
    else return ()

assertTrue :: String -> Bool -> IO()
assertTrue message value = assertEqual message True value

assertFalse :: String -> Bool -> IO()
assertFalse message value = assertEqual message False value
