module Terminals.Alacritty where

import Terminals.Lib.Colors 

alacritty :: IO ()
alacritty = do
    putStrLn (orange ++ "         ▂▂▂▂            " )
    putStrLn (orange ++ "        ▟█▀▀█▙           Name: " ++ reset ++ "Alacritty" )
    putStrLn (orange ++ "       ▟█▛  ▜█▙          Type: " ++ reset ++ "GPU accelerated" )
    putStrLn (orange ++ "      ▟█▛    ▜█▙         Crossplatfom: " ++ reset ++ "Linux, MacOS, Windows, FreeBSD, OpenBSD, NetBSD" )
    putStrLn (orange ++ "     ▟█▛  ▄▄  ▜█▙        Configuring: "  ++ reset ++ "From configuration files" )
    putStrLn (orange ++ "    ▟█▛  ▟██▙  ▜█▙       Nerd Fonts support: " ++ reset ++ "true" )
    putStrLn (orange ++ "   ▟█▛ ▟█▛  ▜█▙ ▜█▙      ANSI support: "       ++ reset ++ "true")
    putStrLn (orange ++ "  ▟█▛ ███    ███ ▜█▙     256 colors support: " ++ reset ++ "true" )
    putStrLn (orange ++ " ▟█▛   ▜▙    ▟▛   ▜█▙    Config file type: " ++ reset ++ "TOML" )
    putStrLn (orange ++ "▟█▛     ▜▙  ▟▛     ▜█▙   " )
    putStrLn (orange ++ "         ▜██▛            " )
    putStrLn (orange ++ "          ▜▛             " )
    putStrLn ""
