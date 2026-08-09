module Terminals.Kitty where

reset :: String
red :: String 
green :: String 
yellow :: String
blue :: String 
magenta :: String 
cyan :: String 
orange :: String 

reset = "\x1b[0m"
black = "\x1b[30m"
red = "\x1b[31m"
green = "\x1b[32m"
yellow = "\x1b[33m"
blue = "\x1b[34m"
magenta = "\x1b[35m"
cyan = "\x1b[36m"
orange = "\x1b[38;5;208m"
white = "\x1b[79m"

kitty :: IO ()
kitty = do
    putStrLn ""
    putStrLn (white ++ " ███████████████████████████████████████ Name: " ++ reset ++ "Kitty" )
    putStrLn (white ++ " █                                     █ Type: " ++ reset ++ "GPU accelerated" )
    putStrLn (white ++ " █ █▙      █   █ █ █████ █████ █     █ █ Crossplatfom: " ++ reset ++ "Linux, MacOS, Windows, FreeBSD, NetBSD, OpenBSD" )
    putStrLn (white ++ " █  █▙     █  █  █   █     █    █   █  █ Configuring: "  ++ reset ++ "From configuration files" )
    putStrLn (white ++ " █    █▙   █ █   █   █     █     █ █   █ Nerd Fonts support: " ++ reset ++ "true" )
    putStrLn (white ++ " █     ██  ██    █   █     █      █    █ ANSI support: " ++ reset ++ "true")
    putStrLn (white ++ " █    █▛   █ █   █   █     █      █    █ 256 colors support: " ++ reset ++ "true" )
    putStrLn (white ++ " █  █▛     █  █  █   █     █      █    █ " )
    putStrLn (white ++ " █ █▛      █   █ █   █     █      █    █ " )
    putStrLn (white ++ " █                                     █ " )
    putStrLn (white ++ " ███████████████████████████████████████ " )
    putStrLn ""
