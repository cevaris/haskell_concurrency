#!/usr/bin/env runhaskell


--[['a','b','c'],['d','e']]

-- Rewrite the previous list literals using only (:) and the empty list constructor [].
exa :: [[Char]]
exa = ('a':'b':'c':[]) : (('d':'e':[]) : [])


-- Write an expression that checks whether a list is empty, [], or its first element is empty, like [[],['a','b']].
--exb :: (Num a) => [a] -> Bool
exb [] = False
exb [[], _] = False
exb (x:xs) = True

--exbb :: [[Integer]] -> Bool
--exbb (null : xs) = False
--exbb (x:xs) = True

--sum' :: (Num a) => [a] -> a  
--sum' [] = 0  
--sum' (x:xs) = x + sum' xs  

main = do
    --print sum' [3, 2, 4]
    --print exa
    
    print (exb [3])
    --print (exbb [[], 3])
    --print (exb [3, []])



