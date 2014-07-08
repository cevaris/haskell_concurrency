import Control.Parallel
import Control.Parallel.Strategies( rpar, Strategy, using )
import Text.Printf
import Data.Char
import System.Environment

fib :: Int -> Int
fib 0 = 1
fib 1 = 1
fib n = fib( n-1 ) + fib( n-2 )


main :: IO ()
main = do
    [n,m] <- getArgs
    let n' = read n
        m' = read m
        pair = (fib n', fib m') `using` parPair
    print pair



parPair :: Strategy( a, b )
parPair ( a, b ) = do
    a' <- rpar a
    b' <- rpar b
    return ( a', b' )
