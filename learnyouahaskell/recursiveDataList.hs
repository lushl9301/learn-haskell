--data List a = Empty | Cons a (List a) deriving (Show, Eq, Read, Ord)
--Empty
--Cons 1 it
--Cons 2 it
--Cons 3 it
--Cons {listHead = 3, listTail = Cons {listHead = 2, listTail = Cons {listHead = 1, listTail = Empty}}}
data List a = Empty | Cons { listHead :: a, listTail :: List a} deriving (Show, Read, Eq, Ord)
