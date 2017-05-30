-- Hw1.hs
module Week1.Homework where

-- Exercise 1
toDigits :: Integer -> [Integer]
toDigits n = toDigits' [] n
  where
    toDigits' xs n
      | n > 0 = toDigits' (n `mod` 10 : xs) (n `div` 10)
      | otherwise = xs

toDigitsRev :: Integer -> [Integer]
toDigitsRev = reverse . toDigits

-- Exercise 2
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther xs =
  reverse $ map (\(n,i) -> if i `mod` 2 == 0 then 2*n else n) $ zip (reverse xs) [1..]

-- Exercise 3
sumDigits :: [Integer] -> Integer
sumDigits = foldl (\acc n -> if n >= 10 then acc + (sum $ toDigits n) else acc + n) 0

-- Exercise 4
validate :: Integer -> Bool
validate n = (sumDigits . doubleEveryOther . toDigits) n `mod` 10 == 0

-- Exercise 5
type Peg = String

type Move = (Peg, Peg)

hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
hanoi 0 _ _ _ = []
hanoi n a b c = hanoi (n-1) a c b ++ [(a,b)] ++ hanoi (n-1) c b a
