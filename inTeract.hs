module Main where

main = interact countChars

countChars :: String -> String
countChars str =
  let allLines = lines str
      lengths  = map (show.length) allLines
  in unlines lengths
	    