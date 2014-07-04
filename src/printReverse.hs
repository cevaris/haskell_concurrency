#!/usr/bin/env runhaskell

main = do
    line <- getLine
    let cleanLine = trim ( line )
    if null cleanLine then
        return ()
    else do
        putStrLn $ reverseWords cleanLine ++ " - " ++ show ( isPalindrome ( cleanLine ) )
        main

trim :: String -> String
trim = unwords . words

reverseWords ::  String -> String
reverseWords = unwords . map reverse . words

isPalindrome :: String -> Bool
isPalindrome st = st == reverseWords st