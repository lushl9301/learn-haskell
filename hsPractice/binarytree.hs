module BinaryTree
    (Tree(..), makeTree, add, printTree)
where
         
data Tree = Tree Int Tree Tree | EMPTYTREE deriving (Show, Eq)
 
printTree :: Tree -> IO()
printTree tree = putStrLn (printSubTree tree 0 0)
 
nodeLinks = ["", "/", "\\"]
 
printSubTree :: Tree -> Int -> Int -> String
printSubTree EMPTYTREE _ _ = ""
printSubTree (Tree root leftSubTree rightSubTree) n link = (printSubTree leftSubTree (n+3) 1) 
    ++ (replicate n ' ') 
    ++ (nodeLinks !! link)
    ++ (show root) ++ "\n"
    ++ (printSubTree rightSubTree (n+3) 2) 
 
makeTree :: Int -> Tree
makeTree n 
    | n < 0     = EMPTYTREE
    | otherwise = Tree n (makeTree (n - 1)) (makeTree (n - 2))
 
add :: Tree -> Int
add EMPTYTREE = 0
add (Tree root leftSubTree rightSubTree) = root + (add leftSubTree) + (add rightSubTree)