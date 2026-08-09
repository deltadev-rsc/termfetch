module Terminals.Alacritty where

reset :: String
red :: String 
green :: String 
yellow :: String
blue :: String 
magenta :: String 
cyan :: String 
orange :: String 

reset = "\x1b[0m"
red = "\x1b[31m"
green = "\x1b[32m"
yellow = "\x1b[33m"
blue = "\x1b[34m"
magenta = "\x1b[35m"
cyan = "\x1b[36m"
orange = "\x1b[38;5;208m"

alacritty :: IO ()
alacritty = do
    putStrLn (orange ++ "         ▂▂▂▂            " )
    putStrLn (orange ++ "        ▟█▀▀█▙           Name: " ++ reset ++ "Alacritty" )
    putStrLn (orange ++ "       ▟█▀  ▀█▙          Type: " ++ reset ++ "GPU accelerated" )
    putStrLn (orange ++ "      ▟█▀    ▀█▙         Crossplatfom: " ++ reset ++ "Linux, MacOS, Windows, FreeBSD, OpenBSD, NetBSD" )
    putStrLn (orange ++ "     ▟█▀  ▄▄  ▀█▙        Configuring: "  ++ reset ++ "From configuration files" )
    putStrLn (orange ++ "    ▟█▀  ████  ▀█▙       Nerd Fonts support: " ++ reset ++ "true" )
    putStrLn (orange ++ "   ▟█▀ ███  ███ ▀█▙      ANSI support: "       ++ reset ++ "true")
    putStrLn (orange ++ "  ▟█▀ ███    ███ ▀█▙     256 colors support: " ++ reset ++ "true" )
    putStrLn (orange ++ " ▟█▀   ██    ██   ▀█▙    " )
    putStrLn (orange ++ "▟█▀     ██  ██     ▀█▙   " )
    putStrLn (orange ++ "         ████            " )
    putStrLn (orange ++ "          ██             " )
    putStrLn ""
