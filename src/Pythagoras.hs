pythagoras :: Double -> Double -> Double
pythagoras a b = sqrt (a^2 + b^2)

main :: IO ()
main = do
  putStrLn "Введите длину первого катета:"
  a <- readLn
  putStrLn "Введите длину второго катета:"
  b <- readLn
  let c = pythagoras a b
  putStrLn $ "Длина гипотенузы равна: " ++ show c
