#!/usr/bin/env runhaskell


--[['a','b','c'],['d','e']]

ex1 :: [[Char]]
ex1 =  ('a' : 'b' : 'c' : []) : ('d' : 'e' : []) : []

main = do
    print ex1


