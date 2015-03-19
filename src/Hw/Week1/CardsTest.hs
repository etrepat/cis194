-- CardsTest.hs
-- Homework 1: 1 - 4
module Hw.Week1.CardsTest where

import Hw.Utils.Console
import Hw.Utils.Testing
import Hw.Week1.Cards

cardsTest :: IO()
cardsTest = do
  putTitleLn "Homework 1 : Exercises 1 - 4 (Credit card validation)"
  putSubtitleLn "Exercise 1"
  assertEqual "toDigits 1234    == [1,2,3,4]" [1,2,3,4] (toDigits 1234)
  assertEqual "toDigitsRev 1234 == [4,3,2,1]" [4,3,2,1] (toDigitsRev 1234)
  assertEqual "toDigits 0       == []" [] (toDigits 0)
  assertEqual "toDigits (-17)   == []" [] (toDigits (-17))
  putSubtitleLn "Exercise 2"
  assertEqual "doubleEveryOther [8,7,6,5] == [16,7,12,5]" [16,7,12,5] (doubleEveryOther [8,7,6,5])
  assertEqual "doubleEveryOther [1,2,3]   == [1,4,3]" [1,4,3] (doubleEveryOther [1,2,3])
  assertEqual "doubleEveryOther [1,3,8,6] == [2,3,16,6]" [2,3,16,6] (doubleEveryOther [1,3,8,6])
