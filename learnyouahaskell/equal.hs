import Prelude hiding ((==))
(==) :: (Eq a) => a -> a -> Bool
data TrafficLight = Red | Yellow | Green

class Eq a where 
  (==), (/=) :: a -> a -> Bool
  x == y = not (x /= y)
  x /= y = not (x == y)

instance Eq TrafficLight where
  Red == Red = True
  Green == Green = True
  Yellow == Yellow = True
  _ == _ = False
  
instance Show TrafficLight where
  show Red = "Red light"
  show Yellow = "Yello light"
  show Green = "Green light"
  
  