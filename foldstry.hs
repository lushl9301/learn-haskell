foldl (\acc x -> if x `elem` "aeiou" 
                 then acc+1 
                 else acc)  0 "hello world"