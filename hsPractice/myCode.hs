zipTogether :: [a] -> [b] -> [(a,b)]
zipTogether _ [] = []
zipTogether [] _ = []
zipTogether (x:xs) (y:xy) = 
  (x, y) : zipTogether xs xy