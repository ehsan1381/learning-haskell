# LET BINDINGS
cylinder :: (RealFloat a) => a -> a -> a
cylinder r h = 
	let 	sideArea 	= 2 * pi * r * h
		topArea		= pi * r^2
	in sideArea + 2 * topArea



calcDensities :: (RealFloat a) => [(a, a)] -> [a]
calcDensities xs = [density | (m, v) <- xs, let density = m / v]

calcDensities :: (RealFloat a) => [(a, a)] -> [a]
calcDensities xs = [density | (m, v) <- xs, let density = m / v, density < 1.2] 
