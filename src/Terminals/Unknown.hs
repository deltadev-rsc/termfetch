module Terminals.Unknown where

import Terminals.Lib.Colors 

unknown :: IO ()
unknown = do
    putStrLn ""
    putStrLn (white ++ " █████████████████████████████████ Name: " ++ reset ++ "Unknown" )
    putStrLn (white ++ " █                               █ Type: " ++ reset ++ "Generic" )
    putStrLn (white ++ " █  ▜█▙                          █ Crossplatfom: " ++ reset ++ "Linux" )
    putStrLn (white ++ " █   ▜█▙                         █ Configuring: "  ++ reset ++ "idk" )
    putStrLn (white ++ " █    ▜█▙                        █ Nerd Fonts support: " ++ reset ++ "true" )
    putStrLn (white ++ " █     ███                       █ ANSI support: " ++ reset ++ "true")
    putStrLn (white ++ " █    ▟█▛                        █ 256 colors support: " ++ reset ++ "true" )
    putStrLn (white ++ " █   ▟█▛                         █ Config file type: " ++ reset ++ "idk" )
    putStrLn (white ++ " █  ▟█▛   █████████████          █ " )
    putStrLn (white ++ " █                               █ " )
    putStrLn (white ++ " █████████████████████████████████ " )
    putStrLn ""
