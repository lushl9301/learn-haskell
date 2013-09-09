import Data.Char
f [] = False
f (x:xs) = isNumber(x) || f(xs)

test x = length(x) > 14 && any isDigit x 
         && any isLower x && any isUpper x