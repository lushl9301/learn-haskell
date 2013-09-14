data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday   
           deriving (Eq, Ord, Show, Read, Bounded, Enum)
--we can make it part of the Enum typeclass.
  --The Enum typeclass is for things that have predecessors and successors.

--We can also make it part of the Bounded typeclass 
  --which is for things that have a lowest possible value and highest possible value.

--Eq instance for a type and then try to compare two values of that type with == or /=

--Ord is for types that have values that can be ordered.

--Read & Show


--It's also part of Bounded, so we can get the lowest and highest day.
--ghci> minBound :: Day  
--Monday  
--ghci> maxBound :: Day  
--Sunday  

--succ Monday -> Tuesday
--pred Saturday -> Friday 
--[Tuesday .. Sunday]
--[....](you know it)

--can use `compare` & '>' '<'