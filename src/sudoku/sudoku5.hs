import Sudoku
import System.Environment
import Paths_hcc
import Data.Maybe
import Control.Parallel.Strategies

main :: IO ()
main = do
    [f] <- getArgs
    filepath <- getDataFileName f
    file <- readFile filepath

    let puzzles   = lines file
    letsolutions = map solve puzzles `using` parList rseq

    print ( length ( filter isJust solutions ) )
