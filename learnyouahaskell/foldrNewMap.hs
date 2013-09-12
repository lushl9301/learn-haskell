newMap f xs = foldl (\acc x -> acc ++ [f x]) [] xs
--acc is the parameter '[]'