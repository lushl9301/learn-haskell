import System.IO

main = do
  withMyFile "readAnotherMe.hs" ReadMode 
    (\handle -> do
        contents <- hGetContents handle
        putStr contents)
    
withMyFile :: FilePath -> IOMode -> (Handle -> IO a) -> IO a

withMyFile path mode f = do
  handle <- openFile path mode
  result <- f handle
  hClose handle
  return result
