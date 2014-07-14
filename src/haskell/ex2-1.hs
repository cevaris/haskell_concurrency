#!/usr/bin/env runhaskell


--[['a','b','c'],['d','e']]

-- Rewrite the previous list literals using only (:) and the empty list constructor [].
exa :: [[Char]]
exa = ('a':'b':'c':[]) : (('d':'e':[]) : [])


-- Write an expression that checks whether a list is empty, [], or its first element is empty, like [[],['a','b']].
--exb :: (Num a) => [a] -> Bool
--exb [] = False
--exb [[], _] = False
--exb (x:xs) = True

--exbb :: [[Integer]] -> Bool
--exbb (x:xs) = exba x

--exba :: (Num a) => [a] -> Bool
--exba (x:xs) = if null xs
--        then True 
--        else if length (head  x) == 0 
--            then True 
--            else False

exba :: (Num a) => [a] -> Bool
exba x = if null x
        then True 
        else False

exbb :: (Num a) => [[a]] -> Bool
exbb (x:xs) = exba x


--exbb :: [[Integer]] -> Bool
--exbb (null : xs) = False
--exbb (x:xs) = True

--sum' :: (Num a) => [a] -> a  
--sum' [] = 0  
--sum' (x:xs) = x + sum' xs  

main = do
    --print sum' [3, 2, 4]
    --print exa
    
    print (exba [])
    print (exba [3])
    print (exbb [[]])
    print (exbb [[3,4]])
    --print (exb [3])
    --print (exbb [[], 3])
    --print (exb [3, []])

    --print if length [['a'],['a','b']] == 0 then True else if length (head [['a'],['a','b']]) == 0 then True else False



