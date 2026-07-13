densityTell :: (RealFloat a) => a -> String
densityTell density
  | density < 1.2 = "Wow! You're going for a ride in the sky!"
  | density <= 1000.0 = "Have fun swimming, but watch out for sharks!"
  | otherwise   = "If it's sink or swim, you're going to sink."

densityTell' :: (RealFloat a) => a -> a -> String
densityTell' mass volume
  | (mass / volume ) < 1.2 = "Wow! You're going for a ride in the sky!"
  | (mass / volume ) <= 1000.0 = "Have fun swimming, but watch out for sharks!"
  | otherwise        = "If it's sink or swim, you're going to sink."

max' :: (Ord a) => a -> a -> a
max' a b
  | a > b     = a
  | otherwise = b


myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
  | a > b     = GT
  | a == b    = EQ
  | otherwise = LT
