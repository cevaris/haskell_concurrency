#!/usr/bin/env runhaskell


--[['a','b','c'],['d','e']]

-- Rewrite the previous list literals using only (:) and the empty list constructor [].
exa :: [[Char]]
exa = ('a':'b':'c':[]) : (('d':'e':[]) : [])


-- Write an expression that checks whether a list is empty, [], or its first element is empty, like [[],['a','b']].
exba :: (Num a) => [a] -> Bool
exba x = if null x
        then True 
        else False

exbb :: (Num a) => [[a]] -> Bool
exbb (x:xs) = exba x

-- Write an expression that checks whether a list has only one element. It should return True for ['a'] and False for [] or ['a','b'].
exca :: (Num a) => [a] -> Bool
exca x = if length x == 1
        then True 
        else False

excb :: (Num a) => [[a]] -> Bool
excb (x:xs) = exba x


main = do
    print (exca [])
    print (exca [1])
    print (exca [1,3])
    print "-----"
    print (excb [[]])
    print (excb [[2],[3]])



