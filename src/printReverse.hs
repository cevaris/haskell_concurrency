#!/usr/bin/env runhaskell

import Control.Monad

--main = do
--    line <- getLine
--    let cleanLine = trim ( line )
--    if null cleanLine then
--        return "Done"
--    else do
--        print $ reverseWords cleanLine ++ " - " ++ show ( isPalindrome ( cleanLine ) )
--        main

main = do
    line <- getLine
    let cleanLine = trim ( line )
    when ( cleanLine /= [] ) $ do
        print $ reverseWords cleanLine ++ " - " ++ show ( isPalindrome ( cleanLine ) )
        main

trim :: String -> String
trim = unwords . words

reverseWords ::  String -> String
reverseWords = unwords . map reverse . words

isPalindrome :: String -> Bool
isPalindrome st = st == reverseWords st