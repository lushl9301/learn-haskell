import Tree
class Funct f where
  fxmap :: (a -> b) -> f a -> f b
instance Funct [] where
  fxmap = map

instance Funct Maybe where
  fxmap f (Just x) = Just (f x)
  fxmap f Nothing = Nothing
  
instance Funct Tree where
  fxmap f EmptyTree = EmptyTree
  fxmap f (Node x left right) = Node (f x) (fxmap f left) (fxmap f right)