module Main where

-- Import my modules
import Terminals.Alacritty
import Terminals.Kitty
import Terminals.Ghostty
import Terminals.Unknown
import Terminals.WezTerm

-- Import not my modules
import System.Environment (lookupEnv)
import System.Process (readProcess)
import Control.Exception (try, IOException)
import Control.Monad (when)
import Data.List (isInfixOf)
import Data.Maybe (isJust)

data Terminal =
    Kitty     |
    Alacritty |
    Ghostty   |
    WezTerm   | Unknown
    deriving (Show, Eq)

--- Function for finding PID
findPid :: String -> IO (Maybe String)
findPid name = do
    res <- try (readProcess "pgrep" ["-f", name] "") :: IO (Either IOException String)
    case res of
        Left _ -> return Nothing
        Right output -> return $ case lines output of
            (pid:_) -> Just pid
            []      -> Nothing

--- Function for detecting terminal
detectTerminal :: IO Terminal
detectTerminal = do
    maybeTerm <- lookupEnv "TERM"
    maybeKittyPid <- lookupEnv "KITTY_PID"
    maybeWezTermPid <- findPid "wezterm-gui"

    let term = case maybeTerm of
        Just t
            | "kitty" `isInfixOf` t -> Kitty
            | "alacritty" `isInfixOf` t -> Alacritty
            | "ghostty" `isInfixOf` t   -> Ghostty
            | "wezterm" `isInfixOf` t   -> WezTerm
        _ -> if isJust maybeKittyPid
            then kitty
            else if isJust maybeWezTermPid
                then WezTerm
                else Unknown

    when (term == Unknown) $ putStrLn "Process weztem-gui (or other terminal) not found"
    return term

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
executeTerminal Kitty     = do runKitty
executeTerminal Alacritty = do runAlacritty
executeTerminal Ghostty   = do runGhostty
executeTerminal Unknown   = do runGeneric
executeTerminal WezTerm   = do runWezTerm

main :: IO ()
main = do
    term <- detectTerminal
    executeTerminal term
