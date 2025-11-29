import System.Environment (getArgs)
import Text.Read (readMaybe)
import Calc (calc)

main :: IO ()
main = do
    args <- getArgs
    case args of
        [a, op, b] -> case calc a op b of
            Right result -> print result
            Left err     -> putStrLn err
        _ -> error "Usage: <number> <operator> <number>"
