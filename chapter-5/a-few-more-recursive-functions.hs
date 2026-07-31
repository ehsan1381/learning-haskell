-- Replicate a number in a list
replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
 | n <= 0 = []
 | otherwise = x:replicate' (n-1) x

-- Take first n elements of a list
take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
 | n <= 0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n-1) xs

-- Reverse a list
reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

-- Repeat an input as an infinite list
repeat' :: a -> [a]
repeat' x = x:repeat' x

-- Two lists to tuples of index matched elements
zip' :: [a] -> [b] -> [(a, b)]
zip' _ [] = []
zip' [] _ = []
zip (x:xs) (y:ys) = (x, y):zip' xs ys

-- Is input in list
elem' :: (Eq a) => a -> [a] -> Bool
elem' _ [] = False
elem' a (x:xs)
 | a == x = True
 | otherwise = elem' a xs
