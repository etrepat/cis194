-- Colors.hs
-- Some color funcs
module Utils.Colors where

ansiClear :: String
ansiClear   = "\x1b[0m"

ansiGreen :: String
ansiGreen   = "\x1b[1;32m"

ansiRed :: String
ansiRed     = "\x1b[1;31m"

ansiBlue :: String
ansiBlue    = "\x1b[1;34m"

ansiYellow :: String
ansiYellow  = "\x1b[1;33m"

ansiMagenta :: String
ansiMagenta  = "\x1b[1;35m"

wrapANSI :: String -> String -> String
wrapANSI esc str = esc ++ str ++ ansiClear
