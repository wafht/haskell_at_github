main = do
	putStrLn "please input a sentence !"
	sent <- getLine
	putStrLn $ doReverse sent

doReverse :: String -> String
doReverse = unwords . reverse . words
