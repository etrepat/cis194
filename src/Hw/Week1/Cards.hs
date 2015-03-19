-- Cards.hs
-- Homework 1: 1 - 4
module Hw.Week1.Cards where

toDigits :: Integer -> [Integer]
toDigits = reverse . toDigitsRev

toDigitsRev :: Integer -> [Integer]
toDigitsRev n
  | n > 0 = n `mod` 10 : toDigitsRev (n `div` 10)
  | otherwise = []

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther xs = doubler [] (reverse xs)
  where doubler ds [] = ds
        doubler ds (y:ys)
          | (length ds) `mod` 2 == 0 = doubler (y : ds) ys
          | otherwise = doubler (y*2 : ds) ys

sumDigits :: [Integer] -> Integer
sumDigits = sum . concatMap toDigits

validate :: Integer -> Bool
validate n = sumDigits (doubleEveryOther (toDigits n)) `mod` 10 == 0
