module Main where

import Control.Monad

main = do
  putStrLn "quit? y/n"
  ans <- getLine
  when (ans /= "y") $ do
    putStrLn "not quitting"
    main