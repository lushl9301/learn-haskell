import System.Random
import Data.List

main = do
  gen <- getStdGen
  let randomChars = randomRs ('a', 'z') gen
      (first20, rest) = splitAt 20 randomChars
      (second20, _) = splitAt 20 rest
  putStrLn first20
  putStr second20

--instead of using the same StdGen twice
--we use only once and generate an infinite string
--pick 2 strings

--if not, we will get 2 strings which are the same

--or we can use newStdGen to get a new StdGen
--and hence, get a different string

--splitAt is imported from Data.List
