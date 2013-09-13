--deriving (Show) at the end of data will show it on the next line
data Shap = Circle Float Float Float | Rectangle Float Float Float Float
          deriving (Show)
--Circle 10 20 5
--output: Circle 10.0 20.0 5.0

--if there is no deriving (Show)
--will be error
