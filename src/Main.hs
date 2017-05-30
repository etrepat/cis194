-- Main.hs
import Utils.Console

import qualified Week1.HomeworkTest as Week1 (test)

main :: IO()
main = do
  putHeadingLn "CIS 194: Introduction to Haskell (Spring 2013)"
  Week1.test
