symbol :: MetricUnit -> String
data MetricUnit = Meter | Liter | KiloGram
                deriving (Show, Eq)
symbol  x
  | (x == Meter) = "m"
  | (x == Liter) = "L"
  | (x == KiloGram) = "kg"