import System.Environment
import System.IO
import System.IO.Error

main = toTry `catch`  handler

toTry :: IO ()
toTry = do
	(filename:_) <- getArgs
	contents <- readFile filename
	putStrLn $ show $ length $ lines contents

handler :: IOError -> IO ()
handler error = putStrLn "file not exist!"
