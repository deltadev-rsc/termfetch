module Terminals.Kitty where

import Terminals.Lib.Colors 

kitty :: IO ()
kitty = do
    putStrLn ""
    putStrLn (white ++ " ████████████████████████████████████████ Name: " ++ reset ++ "Kitty" )
    putStrLn (white ++ " █                                      █ Type: " ++ reset ++ "GPU accelerated" )
    putStrLn (white ++ " █ ▜█▙      █   █ █ █████ █████ █     █ █ Crossplatfom: " ++ reset ++ "Linux, MacOS, Windows, FreeBSD, NetBSD, OpenBSD" )
    putStrLn (white ++ " █  ▜█▙     █  █  █   █     █    █   █  █ Configuring: "  ++ reset ++ "From configuration files" )
    putStrLn (white ++ " █   ▜█▙    █ █   █   █     █     █ █   █ Nerd Fonts support: " ++ reset ++ "true" )
    putStrLn (white ++ " █    ███   ██    █   █     █      █    █ ANSI support: " ++ reset ++ "true")
    putStrLn (white ++ " █   ▟█▛    █ █   █   █     █      █    █ 256 colors support: " ++ reset ++ "true" )
    putStrLn (white ++ " █  ▟█▛     █  █  █   █     █      █    █ Config file type: " ++ reset ++ "Kitty config format" )
    putStrLn (white ++ " █ ▟█▛      █   █ █   █     █      █    █ " )
    putStrLn (white ++ " █                                      █ " )
    putStrLn (white ++ " ████████████████████████████████████████ " )
    putStrLn ""
