module Main where

-- Import my modules
import Terminals.Alacritty
import Terminals.Kitty
import Terminals.Ghostty
import Terminals.Unknown
import Terminals.WezTerm

-- Import not my modules
import System.Environment (lookupEnv)
import Data.List (isInfixOf)

data Terminal =
    Kitty     |
    Alacritty |
    Ghostty   |
    WezTerm   | Unknown
    deriving (Show, Eq)

detectTerminal :: IO Terminal
detectTerminal = do
    maybeTerm <- lookupEnv "TERM"
    maybeKittyPid <- lookupEnv "KITTY_PID"

    return $ case maybeTerm of
        Just t | "kitty" `isInfixOf` t -> Kitty
        Just t | "alacritty" `isInfixOf` t -> Alacritty
        Just t | "ghostty" `isInfixOf` t -> Ghostty
        Just t | "wezterm" `isInfixOf` t -> WezTerm
        _ -> case maybeKittyPid of
            Just _ -> Kitty
            Nothing -> Unknown

runKitty :: IO ()
runKitty = do kitty

runAlacritty :: IO ()
runAlacritty = do alacritty

runGhostty :: IO ()
runGhostty = do ghostty

runGeneric :: IO ()
runGeneric = do unknown

runWezTerm :: IO ()
runWezTerm = do wezterm

executeTerminal :: Terminal -> IO ()
executeTerminal Kitty     = runKitty
executeTerminal Alacritty = runAlacritty
executeTerminal Ghostty   = runGhostty
executeTerminal Unknown   = runGeneric
executeTerminal WezTerm   = runWezTerm

main :: IO ()
main = do
    term <- detectTerminal
    executeTerminal term
