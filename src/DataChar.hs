import Data.Char

main = do
    let char = 'a'
    
    print $ isLower char     -- True
    print $ toUpper char     -- 'A'
    print $ ord char         -- 97