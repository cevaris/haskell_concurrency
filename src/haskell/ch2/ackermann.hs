module Haskell.Ch2.Pascal where

import Data.Maybe

-- http://en.wikipedia.org/wiki/Ackermann_function#Table_of_values

{- 
a(m,n) = {
    n + 1;             m = 0
    A(m-1,1);          m>0, n=0
    A(m-1, A(m, n-1)); m>0, n>0
}
-}

factorial :: Integer -> Integer
factorial 0 = 1
factorial x = go x 1
    where
        go :: Integer -> Integer -> Integer
        go 1 acc = acc
        go x acc = go (x-1) $! (x * acc)

pascal :: Integer -> Integer -> Maybe Integer
pascal n k 
       | k < 0  = Nothing
       | k > n  = Nothing
       | n == k = Just 1
       | otherwise = Just ((factorial n) `div` ((factorial k) * factorial (n - k)))


ack :: Integer -> Integer -> Integer
ack 0 n = n + 1
acc m n
    | (m > 0) && (n == 0) = ack (m-1) 1
    | otherwise = ack (m-1) (ack m (n-1))