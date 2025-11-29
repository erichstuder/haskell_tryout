import Test.Tasty
import Test.Tasty.HUnit
import Calc (calc)

main :: IO ()
main = defaultMain $ testGroup "calc tests"
    [ testCase "1 + 2" $ calc "1" "+" "2" @?= Right 3.0
    , testCase "5 - 3" $ calc "5" "-" "3" @?= Right 2.0
    , testCase "4 * 2" $ calc "4" "*" "2" @?= Right 8.0
    , testCase "8 / 2" $ calc "8" "/" "2" @?= Right 4.0
    , testCase "bad operator" $ calc "1" "x" "2" @?= Left "Unknown operator"
    , testCase "bad number" $ calc "foo" "+" "2" @?= Left "Arguments must be numbers"
    ]
