import System.Random
randoms' :: (RandomGen g, Random a) => g -> [a]
randoms' gen = let (value, newGen) = random gen in value:randoms' newGen
--take 5 $ randoms (mkStdGen 11) :: [Int]
