import System.Environment
import System.IO
import System.Directory

main = do
	(filename:_) <- getArgs
	fileExists <- doesFileExist filename
	if fileExists
	then do contents <- readFile filename
		putStrLn $   show (length $ lines contents)
	else do putStrLn "file not exist!"
