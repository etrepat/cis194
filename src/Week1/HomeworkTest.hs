-- HomeworkTest.hs
module Week1.HomeworkTest (test) where

import Utils.Console
import Utils.Testing

import Week1.Homework

testToDigits :: IO ()
testToDigits = do
  putSubtitleLn "Exercise 1"
  assertEqual "toDigits 1234 == [1,2,3,4]" [1,2,3,4] (toDigits 1234)
  assertEqual "toDigitsRev 1234 == [4,3,2,1]" [4,3,2,1] (toDigitsRev 1234)
  assertEqual "toDigits 0 == []" [] (toDigits 0)
  assertEqual "toDigits (-17) == []" [] (toDigits (-17))
  assertEqual "toDigits 4012888888881881 == [4,0,1,2,8,8,8,8,8,8,8,8,1,8,8,1]" [4,0,1,2,8,8,8,8,8,8,8,8,1,8,8,1] (toDigits 4012888888881881)

testDoubleEveryOther :: IO ()
testDoubleEveryOther = do
  putSubtitleLn "Exercise 2"
  assertEqual "doubleEveryOther [8,7,6,5] == [16,7,12,5]" [16,7,12,5] (doubleEveryOther [8,7,6,5])
  assertEqual "doubleEveryOther [1,2,3] == [1,4,3]" [1,4,3] (doubleEveryOther [1,2,3])
  assertEqual "doubleEveryOther [1,3,8,6] == [2,3,16,6]" [2,3,16,6] (doubleEveryOther [1,3,8,6])
  assertEqual "doubleEveryOther [4,0,1,2,8,8,8,8,8,8,8,8,1,8,8,1] == [8,0,2,2,16,8,16,8,16,8,16,8,2,8,16,1]" [8,0,2,2,16,8,16,8,16,8,16,8,2,8,16,1] (doubleEveryOther [4,0,1,2,8,8,8,8,8,8,8,8,1,8,8,1])

testSumDigits :: IO ()
testSumDigits = do
  putSubtitleLn "Exercise 3"
  assertEqual "sumDigits [2,3,16,6] == 18" 18 (sumDigits [2,3,16,6])
  assertEqual "sumDigits [16,7,12,5] == 22" 22 (sumDigits [16,7,12,5])
  assertEqual "sumDigits [8,0,2,2,16,8,16,8,16,8,16,8,2,8,16,1] == 90" 90 (sumDigits [8,0,2,2,16,8,16,8,16,8,16,8,2,8,16,1])

testValidate :: IO ()
testValidate = do
  putSubtitleLn "Exercise 4"
  assertTrue "validate 4012888888881881 = True" (validate 4012888888881881)
  assertFalse "validate 4012888888881882 = False" (validate 4012888888881882)

testHanoi :: IO ()
testHanoi = do
  putSubtitleLn "Exercise 5"
  assertEqual "hanoi 2 \"a\" \"b\" \"c\" == [(\"a\",\"c\"),(\"a\",\"b\"),(\"c\",\"b\")]" [("a","c"),("a","b"),("c","b")] (hanoi 2 "a" "b" "c")

test :: IO()
test = do
  putTitleLn "Homework 1 : Exercises 1 - 4 (Credit card validation)"
  testToDigits
  testDoubleEveryOther
  testSumDigits
  testValidate
  putTitleLn "Homework 1 : Exercises 5 - 6 (Towers of Hanoi)"
  testHanoi
