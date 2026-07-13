-- PATTERN MATCHING
lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER 7!"
lucky x = "Sorry, you are out of luch, pal!"


-- sayMe function
sayMe :: (Integral a) => a -> String
sayMe 1 = "One"
sayMe 2 = "Two"
sayMe 3 = "Three"
sayMe 4 = "Four"
sayMe 5 = "Five"
sayMe x = "Not between 1 and 5"

-- sayMe' function
sayMe' :: (Integral a) => a -> String
sayMe' x = "Not between 1 and 5"
sayMe' 1 = "One"
sayMe' 2 = "Two"
sayMe' 3 = "Three"
sayMe' 4 = "Four"
sayMe' 5 = "Five"

-- factorial function
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial x = factorial (x - 1)

-- factorial' function -- this will never terminate
-- factorial :: (Integral a) => a -> a
-- factorial x = factorial (x - 1)
-- factorial 0 = 1

-- function charName -- not exhaustive
charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"

-- addVectors function -- not using pattern matching
addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors a b = (fst a + fst b, snd a + snd b)

-- addVectors function -- using pattern matching
addVectors' :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors' (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)


-- AN IMPLEMENTATION OF FUNCTION head USING PATTERN MATCHING
head' :: [a] -> a
head' [] = error "cant call head on an empty list, dummy"
head' (x:_) = x


-- MORE PATTERN MATCHING EXAMPLES
tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements " ++ show x ++ " and " ++ show y
tell (x:y:_) = "The list is long, The first two elements are: " ++ show x ++ " and " ++ show y

-- DECLARING THE LENGTH FUNCTION USING RECURSION
length' :: (Num a) => [a] -> a
length' [] = 0
length' (_:xs) = 1 + length' xs

-- DECLARING FUNCTION SUM USING RECURSION
sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

-- PATTERNS
capital :: String -> String
capital "" = "Empty string"
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]
