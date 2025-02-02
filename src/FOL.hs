-- Предикат принимает список объектов и возвращает True/False
type Predicate a = [a] -> Bool

-- Функция принимает список объектов и возвращает новый объект
type Function a b = [a] -> b

-- Объекты могут быть любого типа
data Term a = Var String   -- Переменная
            | Const a      -- Константа
            | Func String [Term a]  -- Вызов функции

-- Конъюнкция
conj :: Predicate a -> Predicate a -> Predicate a
conj p q args = p args && q args

-- Дизъюнкция
disj :: Predicate a -> Predicate a -> Predicate a
disj p q args = p args || q args

-- Импликация
impl :: Predicate a -> Predicate a -> Predicate a
impl p q args = not (p args) || q args

-- Отрицание
neg :: Predicate a -> Predicate a
neg p args = not (p args)

-- Квантор всеобщности
forall' :: Eq a => (a -> Bool) -> [a] -> Bool
forall' p xs = all p xs

-- Квантор существования
exists :: Eq a => (a -> Bool) -> [a] -> Bool
exists p xs = any p xs

-- Простые предикаты
isEven :: Int -> Bool
isEven x = x `mod` 2 == 0

greaterThan :: Int -> Int -> Bool
greaterThan x y = x > y

-- Пример использования
example1 :: Bool
example1 = exists isEven [1, 3, 5]

example2 :: Bool
example2 = forall' (\x -> greaterThan x 10) [11, 12, 13]
