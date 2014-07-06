import Sudoku
import System.Environment
import Paths_hcc
import Data.Maybe
import Control.Parallel.Strategies hiding (parMap)

main :: IO ()
main = do
    [f] <- getArgs
    filepath <- getDataFileName f
    file <- readFile filepath

    let puzzles   = lines file
        solutions = runEval ( parMap solve puzzles )

    print ( length ( filter isJust solutions ) )


parMap :: ( a -> b ) -> [a] -> Eval [b]
parMap f [] = return []
parMap f ( a:as ) = do
    b  <- rpar (f a)
    bs <- parMap f as
    return ( b:bs )