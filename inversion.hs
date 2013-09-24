findInversion [] = 0
findInversion (x:xs) = (length (filter (<x) xs)) + findInversion xs
--findInversion (x:xs) = (length [a | a <- xs, a < x]) + findInversion xs