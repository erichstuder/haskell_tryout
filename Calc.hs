module Calc (calc) where

import Text.Read (readMaybe)

calc :: String -> String -> String -> Either String Double
calc a op b =
    case (readMaybe a :: Maybe Double, readMaybe b :: Maybe Double) of
        (Just x, Just y) -> case op of
            "+" -> Right (x + y)
            "-" -> Right (x - y)
            "*" -> Right (x * y)
            "/" -> Right (x / y)
            _ -> Left "Unknown operator"
        _ -> Left "Arguments must be numbers"
