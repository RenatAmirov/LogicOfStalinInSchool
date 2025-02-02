module Main where

-- Определим несколько простых функций для работы с пропозициональной логикой

-- Логическое И
and' :: Bool -> Bool -> Bool
and' True x = x
and' False _ = False

-- Логическое ИЛИ
or' :: Bool -> Bool -> Bool
or' True _ = True
or' False y = y

-- Отрицание
not' :: Bool -> Bool
not' True = False
not' False = True

-- Проверка истинности формулы A && B || C
checkFormula :: Bool -> Bool -> Bool -> Bool
checkFormula a b c = or' (and' a b) c

main :: IO ()
main = do
  putStrLn $ show $ checkFormula True False True   -- Должен вывести True
  putStrLn $ show $ checkFormula False False False -- Должен вывести False