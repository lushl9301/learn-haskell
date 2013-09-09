f [] = []
f (x:xs) = (f (filter (<x) xs)) ++ [x] ++ (f (filter (>=x) xs))


k [] = []
k (x:xs) = f [a|a <- xs, a<=x] ++ x : f[a|a <- xs, a>x]