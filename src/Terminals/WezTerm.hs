module Terminals.WezTerm where

import Terminals.Lib.Colors 

wezterm :: IO ()
wezterm = do
    putStrLn ""
    putStrLn (blue ++ " ████████████████████████████████████████ Name: " ++ reset ++ "WezTerm" )
    putStrLn (blue ++ " █                                      █ Type: " ++ reset ++ "GPU Accelerated" )
    putStrLn (blue ++ " █         ▟█▛      ██              ██  █ Crossplatfom: " ++ reset ++ "Linux, MacOS, FreeBSD, NerBSD, Windows" )
    putStrLn (blue ++ " █   ████ ▟█▛ ██    ██              ██  █ Configuring: "  ++ reset ++ "From configuration files" )
    putStrLn (blue ++ " █  ██   ▟█▛        ██              ██  █ Nerd Fonts support: " ++ reset ++ "true" )
    putStrLn (blue ++ " █   ██ ▟█▛         ██              ██  █ ANSI support: " ++ reset ++ "true")
    putStrLn (blue ++ " █     ▟█▛ ██       ▜█▙   ▟█▛▜█▙   ▟█▛  █ 256 colors support: " ++ reset ++ "true" )
    putStrLn (blue ++ " █ ██ ▟█▛ ██         ▜█▙ ▟█▛  ▜█▙ ▟█▛   █ Config file format: " ++ reset ++ "Lua" )
    putStrLn (blue ++ " █   ▟█▛              ▜█▙        ▟█▛    █ " )
    putStrLn (blue ++ " █                                      █ " )
    putStrLn (blue ++ " ████████████████████████████████████████ " )
    putStrLn ""
