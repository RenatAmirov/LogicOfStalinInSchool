import Data.List (transpose)

-- Функция для выравнивания строк по максимальной длине
padLeft :: Char -> Int -> String -> String
padLeft ch len str = replicate (len - length str) ch ++ str

-- Сложение двух цифр
addDigits :: Char -> Char -> Char
addDigits a b = intToDigit $ digitToInt a + digitToInt b

-- Сложить два числа столбиком
addColumnWise :: String -> String -> String
addColumnWise x y = zipWith addDigits (reverse x) (reverse y)

-- Сложить список чисел столбиком
sumNumbers :: [String] -> String
sumNumbers nums = reverse $ foldl1 addColumnWise paddedNums
  where
    maxLen = maximum $ map length nums
    paddedNums = map (padLeft '0' maxLen) nums

main :: IO ()
main = do
  let numbers = ["1234", "5678", "9012"]
  print $ sumNumbers numbers
  