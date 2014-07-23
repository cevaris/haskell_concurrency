module Haskell.Ch2.Ackermann where

import Data.Maybe
import Debug.Trace

-- http://en.wikipedia.org/wiki/Ackermann_function#Table_of_values

{- 
a(m,n) = {
    n + 1;             m = 0
    A(m-1,1);          m>0, n=0
    A(m-1, A(m, n-1)); m>0, n>0
}
-}

-- | trace (show m) True
ack :: Integer -> Integer -> Integer
ack 0 n = n + 1
ack m 0 = ack (m-1) 1
ack m n = ack (m-1) (ack m (n-1))