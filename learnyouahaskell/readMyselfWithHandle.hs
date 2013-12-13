import System.IO

main = do
  handle <- openFile "readMyselfWithHandle.hs" ReadMode
  contents <- hGetContents handle
  putStr contents
  hClose handle
