take 5 $ foldr(\x acc -> x:acc) [] [1..]
--this one will be interpreted and run well.
--output [1,2,3,4,5]

--take 5 $ foldl(\x acc -> x:acc) [] [1..]
--error
--because right folds work on infinite lists, whereas left ones don't

--take 5 $ foldr(\acc x -> x ++ [acc]) [] [1..]
--Stack Overflow! haha! you know it!

--also the first line take 5 $ foldr(\x acc -> x:acc) [] [1..] can be simplified as:
take 5 $ foldr (:) [] [1..]