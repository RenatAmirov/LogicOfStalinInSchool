-- https://giga.chat/link/gcsuCcbBZU
-- деление столбиком haskell

import Data.List.Split (chunksOf)

-- Функция для деления столбиком
divideColumn :: Int -> Int -> String
divideColumn dividend divisor = go "" (show dividend) where
    go result [] = result
    go result ds = let (currentDividend, nextDigits) = splitAt (length currentResult + 1) ds
                       currentResult = takeWhile (/= '0') (result ++ currentDividend)
                       quotientDigit = head $ show $ read currentResult `div` divisor
                   in go (result ++ [quotientDigit]) nextDigits
      where
        currentResult = if null result then "0" else result

main :: IO ()
main = do
    putStrLn "Введите делимое:"
    dividend <- getLine
    putStrLn "Введите делитель:"
    divisor <- getLine
    let result = divideColumn (read dividend) (read divisor)
    putStrLn ("Результат деления столбиком: " ++ result)
