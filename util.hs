import Data.Char

initials :: String -> String -> String
initials firstName lastName = [f] ++ ". " ++ [l] ++ "."
			      where f  = toUpper $ head firstName
				    l  = toUpper $ head lastName

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "empty list!"
maximum' (x:[]) = x
maximum' (x:xs)
	| x `compare` maximum' xs == GT  = x
	| otherwise = maximum' xs
