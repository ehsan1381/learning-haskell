# THE WHERE KEYWORD
# densityTell :: (RealFloat a) => a -> a -> String
# densityTell mass volume
# 	| density < 1.2 	= "Wow! You are going for a ride in the sky!"
# 	| density <= 1000.0 	= "Have fun swimming, but watch out for the sharks"
# 	| otherwise 		= "If it's sink or swim, you are going to sink."
# 	where density = mass / volume


# multiple values
densityTell :: (RealFloat a) => a -> a -> String
densityTell mass volume
	| density < air		= "Wow! You are going for a ride in the sky!"
	| density <= water 	= "Have fun swimming, but watch out for the sharks"
	| otherwise 		= "If it's sink or swim, you are going to sink."
	where 
		density = mass / volume
		air = 1.2
		water = 1000.0


# defining functions in a where block
calcDensities :: (RealFloat a) => [(a, a)] -> [a]
calcDensities xs = [density m v | (m, v) <- xs]
	where density mass volume = mass / volume
