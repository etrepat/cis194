-- Main.hs
import Hw.Utils.Console
import Hw.Week1.CardsTest
import Hw.Week1.HanoiTest

main :: IO()
main = do
  putHeadingLn "CIS 194: Introduction to Haskell (Spring 2013)"
  cardsTest
  hanoiTest
