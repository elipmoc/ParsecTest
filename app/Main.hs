module Main where

import           TestParsec

main :: IO ()
main = do
    run openClose "()"
    print "-----------"
    run openClose "(4)"
    print "-----------"
    run openClose "(("
    print "-----------"
    run openClose "()44444"
