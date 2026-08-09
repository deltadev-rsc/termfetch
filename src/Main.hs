module Main where

-- Import my modules 
import Terminals.Alacritty
import Terminals.Kitty 
import Terminals.Ghostty

-- Import not my modules 
import System.Environment (getEnvironment)
import System.Process (readProcess)
import Data.List (isInfixOf)

isTerminal :: String -> IO Bool
isTerminal term = do
    env <- getEnvironment
    case lookup "TERM" env of
        Just prog | term == "alacritty" && prog == "Alacritty" -> return True
        _ -> return False
    case term of
        "kitty" -> checkProcessName "kitty"
        "ghostty" -> checkProcessName "ghostty"
        "weztern" -> checkProcessName "wezterm"
        "konsole" -> checkProcessName "konsole"
        _ -> return False

checkProcessName :: String -> IO Bool 
checkProcessName term = do
    psOutput <- readProcess "ps" ["-e"] ""
    return $ isInfixOf term psOutput

detectTerminal :: IO (Maybe String)
detectTerminal = do
    terminals <- sequence
        [ isTerminal "kitty"     >>= \b -> return $ if b then Just kitty else Nothing
        , isTerminal "alacritty" >>= \b -> return $ if b then Just alacritty else Nothing
        , isTerminal "ghostty"   >>= \b -> return $ if b then Just ghostty else Nothing
--        , isTerminal "wezterm"   >>= \b -> return $ if b then Just "wezterm" else Nothing
--        , isTerminal "konsole"   >>= \b -> return $ if b then Just "konsole" else Nothing
        ]

    return $ head $ filter (/= Nothing) terminals

main :: IO ()
main = do
    detectTerminal "kitty"
