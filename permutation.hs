import Data.List
--findNthPermutation n l= (permutations l) !! (n)

--delete :: Eq a => a -> [a] -> [a]
--delete x xs = filter (/=x) xs

permutation :: Eq a => [a] -> [[a]]
permutation [] = [[]]
permutation xs = concatMap (\x -> map (x:) $ permutation (delete x xs)) xs

--if we import Data.List the number of permutations with repeated number 
--will be the same as the one with distinct elements 

--if we use myDelete. it will double/triple/... the one without repeated number... 

--anyhow... many bugs.