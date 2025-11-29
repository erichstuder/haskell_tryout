import System.Environment (getArgs)
import Text.Read (readMaybe)

main :: IO ()
main = do
    args <- getArgs
    case args of
        [a, op, b] ->
            case (readMaybe a :: Maybe Double, readMaybe b :: Maybe Double) of
                (Just x, Just y) -> print $ case op of
                    "+" -> x + y
                    "-" -> x - y
                    "*" -> x * y -- this operator must be used like "*"
                    "/" -> x / y
                    _   -> error "Unknown operator"
                _ -> error "Arguments must be numbers."
        _ -> error "Usage: <number> <operator> <number>"

-- Execute e.g. with: ./run.sh && ./build/app 1 + 1
