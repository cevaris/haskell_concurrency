import Sudoku
import Control.Parallel.Strategies
import Control.Exception
import System.Environment
import Control.DeepSeq
import Data.Maybe
import Paths_hcc

main :: IO ()
main = do
    [f] <- getArgs                           -- <1>
  
    filepath <- getDataFileName f
    file <- readFile filepath                -- <2>

    let puzzles = lines file
        (as, bs) = splitAt ( length puzzles `div` 2 ) puzzles

        solutions = runEval $ do
            as' <- rpar ( force ( map solve as ) )
            bs' <- rpar ( force ( map solve bs ) )
            rseq as'
            rseq bs'
            return (as' ++ bs')

    print ( length ( filter isJust solutions ) )
