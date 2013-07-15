import System.Environment
main = do
	[weight, height] <- getArgs
	putStrLn $ bmiTell (read weight::Float)  (read height::Float)

bmiTell ::  Float -> Float -> String
bmiTell weight height
	| bmi <= skinny = "you ar under weight, you emo, you!"
	| bmi <= normal = "you are suppoosedly normal. Pffft, I bet you're ugly!"
	| bmi <= fat = "you're fat! Lost some weight!"
	| otherwise = "holy shit!"
	where bmi = weight / height ^ 2
	      (skinny, normal, fat) = (18.5, 25.0, 30.0) 
