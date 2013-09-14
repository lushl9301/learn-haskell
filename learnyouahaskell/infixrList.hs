infixr 5 :=
--(:=) :: a -> List a -> List a
--Don't KNOW WHY THERE IS AN ERROR!!!
data List a = Empty | a := (List a) deriving (Show, Read, Eq, Ord) 

infixr 5 .++
(.++) :: List a -> List a -> List a   
Empty .++ ys = ys  
(x := xs) .++ ys = x := (xs .++ ys)

--> let a = it
--> let b = 5 := 6 := 7 := Empty
--> a .++ b
--3 := (2 := (1 := (5 := (6 := (7 := Empty)))))