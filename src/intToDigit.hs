import Data.Char

main :: IO ()
main = do
    let digitChar = intToDigit 7
    putStrLn $ "Цифра для числа 7: " ++ [digitChar]
