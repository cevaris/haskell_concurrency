module Haskell.Ch2.Pascal where

import Data.Maybe

--http://en.wikipedia.org/wiki/Binomial_coefficient

{- 
(n k) = (n!)/(k!(n-k)!)
-}

--factorial :: Integer -> Integer
--factorial 0 = 1
--factorial x = x * factorial(x-1)

factorial :: Integer -> Integer
factorial 0 = 1
factorial x = go x 1
    where
        go :: Integer -> Integer -> Integer
        go 1 acc = acc
        go x acc = go (x-1) $! (x * acc)

--pascal :: Integer -> Integer -> Integer
--pascal n k = if k >= 0
--             then if k == n
--                  then 1
--                  else if n > k 
--                       then (factorial n) `div` ((factorial k) * factorial (n - k))
--                       else error "Invalid argument: k > n"
--             else error "Invalid arguments: k is negative"

--pascal :: Integer -> Integer -> Integer
--pascal n k 
--       | k < 0  = error "Invalid Argument: k is negative."
--       | k > n  = error "Invalid Argument: k > n."
--       | n == k = 1
--       | otherwise = (factorial n) `div` ((factorial k) * factorial (n - k))


pascal :: Integer -> Integer -> Maybe Integer
pascal n k 
       | k < 0  = Nothing
       | k > n  = Nothing
       | n == k = Just 1
       | otherwise = Just ((factorial n) `div` ((factorial k) * factorial (n - k)))
