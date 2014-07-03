#!/usr/bin/env runhaskell

import Control.Parallel
import Control.Parallel.Strategies
import Control.Exception
import Data.Time.Clock
import Text.Printf
import System.Environment
import System.CPUTime

--
getTime :: IO Double
getTime = do
    t <- System.CPUTime.getCPUTime
    return ((fromInteger t) * 1e-12)
--

--
printDeltaTime t0 = do
    t1 <- getCurrentTime
    printf "Time: %.2fs\n" (realToFrac (diffUTCTime t1 t0) :: Double)

--
fib :: Integer -> Integer
fib 0 = 1
fib 1 = 1
fib n = fib (n-1) + fib (n-2)
--

--
main = do
    [n] <- getArgs
    let test = [test1,test2,test3,test4] !! (read n - 1)

    t0 <- getCurrentTime
    r <- evaluate (runEval test)
    printDeltaTime t0
    print r
    printDeltaTime t0
--

--
test1 = do
    x <- rpar (fib 36)
    y <- rpar (fib 35)
    return (x,y)
--


--
test2 = do
    x <- rpar (fib 36)
    y <- rseq (fib 35)
    return (x,y)
--


--
test3 = do
    x <- rpar(fib 36)
    y <- rpar(fib 35)
    rseq x
    return (x,y)
--

--
test4 = do
    x <- rpar(fib 36)
    y <- rpar(fib 35)
    rseq x
    rseq y
    return (x,y)
--





