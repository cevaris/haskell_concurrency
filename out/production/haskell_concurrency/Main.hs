module Main where

import Control.Parallel
import Control.Parallel.Strategies
import System.Environment
import Control.Exception
import Text.Printf

--data Eval a
--instance Monad Eval


-- <<fib
fib :: Integer -> Integer
fib 0 = 1
fib 1 = 1
fib n = fib (n-1) + fib (n-2)
-- >>


-- <<test1
test1 = do
  x <- rpar (fib 36)
  y <- rpar (fib 35)
  return (x,y)
-- >>

main = do
  r <- runEval test1
  print r



