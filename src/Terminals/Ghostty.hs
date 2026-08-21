module Terminals.Ghostty where

import Terminals.Lib.Colors 

ghostty :: IO ()
ghostty = do
    putStrLn (white ++ "  ▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂  " )
    putStrLn (white ++ " ▟█████████████████████▙ Name: " ++ reset ++ "Ghostty" )
    putStrLn (white ++ " █                     █ Type: " ++ reset ++ "GPU accelerated" )
    putStrLn (white ++ " █                     █ Crossplatfom: " ++ reset ++ "Linux, MacOS, Windows, FreeBSD" )
    putStrLn (white ++ " █   ▜█▙               █ Configuring: "  ++ reset ++ "From configuration files" )
    putStrLn (white ++ " █    ███  █████████   █ Nerd Fonts support: " ++ reset ++ "true" )
    putStrLn (white ++ " █   ▟█▛               █ ANSI support: " ++ reset ++ "true")
    putStrLn (white ++ " █                     █ 256 colors support: " ++ reset ++ "true" )
    putStrLn (white ++ " █                     █ Config file type: " ++ reset ++ "Ghostty config format" )
    putStrLn (white ++ " █                     █ " )
    putStrLn (white ++ " █    ▟█▙       ▟█▙    █ " )
    putStrLn (white ++ "  ▜███▛ ▜███████▛ ▜███▛  " )
    putStrLn ""
