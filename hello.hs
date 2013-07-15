main = do
	putStrLn "please input your name!"
	name <- getLine
	putStrLn  $ "hello " ++ name ++" !"
