fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

fibsLessThan n = takeWhile (<n) fibs