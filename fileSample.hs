import System.IO
import Data.List

main = do
	handle <- openFile "fileSample.hs" ReadMode
	contents <- hGetContents handle
	
	writeFile "fileSample.hs" $ contents ++ "\n--comment" 
