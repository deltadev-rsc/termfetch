module Main where

-- Import my modules 
import Terminals.Alacritty
import Terminals.Kitty 
import Terminals.Ghostty

-- Import not my modules 
import System.Environment (lookupEnv)
import Data.List (isInfixOf)

data Terminal = Kitty | Alacritty | Ghostty | Unknown
    deriving (Show, Eq)

detectTerminal :: IO Terminal 
detectTerminal = do
    maybeTerm <- lookupEnv "TERM"
    maybeKittyPid <- lookupEnv "KITTY_PID"

    return $ case maybeTerm of 
        Just t | "kitty" `isInfixOf` t -> Kitty 
        Just t | "alacritty" `isInfixOf` t -> Alacritty 
        Just t | "ghostty" `isInfixOf` t -> Ghostty
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
runGeneric = do putStrLn "sdfsdfsdfswerwefsdghfghfa"

executeFeature :: Terminal -> IO ()
executeFeature Kitty     = runKitty
executeFeature Alacritty = runAlacritty
executeFeature Ghostty   = runGhostty
executeFeature Unknown   = runGeneric

main :: IO ()
main = do
    term <- detectTerminal
    executeFeature term 
