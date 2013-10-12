main = do
  withFile "todo.txt" ReadMode (
    \handle -> do 
      contents <- hGetContents handle
      putStr contents)
    