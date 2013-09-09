module Main where

main = do
  putStrLn "Why did the banker leave his job?"
  answer <- getLine
  putStrLn (if answer == "he lost interest"
            then "Correct!"
            else "Wrong!")