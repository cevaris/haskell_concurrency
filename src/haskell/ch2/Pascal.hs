module Haskell.Ch2.Pascal where

--http://en.wikipedia.org/wiki/Binomial_coefficient

{- 
(n k) = (n!)/(k!(n-k)!)
-}

factorial :: Integer -> Integer
factorial 0 = 1
factorial x = x * factorial(x-1)

--pascal :: Integer -> Integer -> Integer
--pascal n k = if k >= 0
--             then if k == n
--                  then 1
--                  else if n > k 
--                       then (factorial n) `div` ((factorial k) * factorial (n - k))
--                       else error "Invalid argument: k > n"
--             else error "Invalid arguments: k is negative"

pascal :: Integer -> Integer -> Integer
pascal n k 
       | k < 0  = error "Invalid Argument: k is negative."
       | k > n  = error "Invalid Argument: k > n."
       | n == k = 1
       | otherwise = (factorial n) `div` ((factorial k) * factorial (n - k))
