
import Sudoku
import Control.Exception
import System.Environment
import Data.Maybe
import Paths_hcc

-- <<main
main :: IO ()
main = do
    [f] <- getArgs                           -- <1>
  
    filepath <- getDataFileName f
    file <- readFile filepath                -- <2>

    let puzzles   = lines file               -- <3>
        solutions = map solve puzzles        -- <4>

    print (length (filter isJust solutions)) -- <5>
-- >>
