-- HanoiTest.hs
-- Homework 1: 1 - 4
module Hw.Week1.HanoiTest where

import Hw.Utils.Console
import Hw.Utils.Testing
import Hw.Week1.Hanoi

hanoiTest :: IO()
hanoiTest = do
  putTitleLn "Homework 1 : Exercises 5 - 6 (Towers of Hanoi)"
  putSubtitleLn "Exercise 5"
  assertEqual "hanoi 2 \"a\" \"b\" \"c\" == [(\"a\",\"c\"),(\"a\",\"b\"),(\"c\",\"b\")]" [("a","c"), ("a","b"), ("c","b")] (hanoi 2 "a" "b" "c")
  assertEqual "hanoi 3 \"a\" \"b\" \"c\" == [(\"a\",\"b\"),(\"a\",\"c\"),(\"b\",\"c\"),(\"a\",\"b\"),(\"c\",\"a\"),(\"c\",\"b\"),(\"a\",\"b\")]" [("a","b"),("a","c"),("b","c"),("a","b"),("c","a"),("c","b"),("a","b")] (hanoi 3 "a" "b" "c")
