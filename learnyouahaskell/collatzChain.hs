chain :: Integer -> [Integer]
chain 1 = [1]
chain n
  | even n = n:chain(n `div` 2)
  | odd n = n:chain(n*3 + 1)
            
lenChain 1 = [(1,1)]
lenChain n = (lenChain (n-1)) ++ [(n, length (chain n))]

chainLenList = map snd (lenChain n)