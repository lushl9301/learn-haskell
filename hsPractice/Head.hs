head' :: [a] -> a
head' xs
    | null xs   = error "list is empty"
    | otherwise = xs !! 0