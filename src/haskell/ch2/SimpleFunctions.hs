module Haskell.Ch2.SimpleFunctions where

firstOrEmpty :: [String] -> String
firstOrEmpty lst = if not (null lst) then head lst else "empty"


-- List concatenation
(+++) :: [a] -> [a] -> [a]
l1 +++ l2 = if null l1
            then l2
            else (head l1) : (tail l1 +++ l2)


-- List reversal
reverse2 :: [a] -> [a]
reverse2 ls = if null ls
            then []
            else reverse2 (tail ls) +++ [head ls]

maxmin :: (Ord a) => [a] -> (a, a) 
maxmin ls = let h = head ls
            in if null (tail ls)
            then (h, h)
            else ( if h > tmax then h else tmax,
                   if h < tmin then h else tmin )
                where t = maxmin (tail ls)
                      tmax = fst t
                      tmin = snd t