module Haskell.Ch2.Unzip where

import Data.Maybe
import Debug.Trace

-- http://en.wikipedia.org/wiki/Ackermann_function#Table_of_values

{- 
unzip [(1,2),(3,4)] = ([1,3],[2,4])
-}

munzip :: [(a,a)] -> ([a],[a])
munzip = foldr (\(a,b) ~(as,bs) -> (a:as,b:bs)) ([],[])