-- Console.hs
-- Minor printing functions
module Utils.Console where

import Utils.Colors

putHeading :: String -> IO()
putHeading s = putStr $ wrapBlue s

putHeadingLn :: String -> IO()
putHeadingLn s = putStrLn $ wrapBlue s

putTitle :: String -> IO()
putTitle s = putStr $ wrapMagenta s

putTitleLn :: String -> IO()
putTitleLn s = putStrLn $ wrapMagenta s

putSubtitle :: String -> IO()
putSubtitle s = putStr $ wrapYellow s

putSubtitleLn :: String -> IO()
putSubtitleLn s = putStrLn $ wrapYellow s

putSuccess :: String -> IO()
putSuccess s = putStr $ wrapGreen s

putSuccessLn :: String -> IO()
putSuccessLn s = putStrLn $ wrapGreen s

putFailure :: String -> IO()
putFailure s = putStr $ wrapRed s

putFailureLn :: String -> IO()
putFailureLn s = putStrLn $ wrapRed s

wrapGreen :: String -> String
wrapGreen = wrapANSI ansiGreen

wrapRed :: String -> String
wrapRed = wrapANSI ansiRed

wrapBlue :: String -> String
wrapBlue = wrapANSI ansiBlue

wrapYellow :: String -> String
wrapYellow = wrapANSI ansiYellow

wrapMagenta :: String -> String
wrapMagenta = wrapANSI ansiMagenta
