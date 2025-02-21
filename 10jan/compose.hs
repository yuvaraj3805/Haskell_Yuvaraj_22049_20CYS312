compose :: (b -> c) -> (a -> b) -> a -> c
compose f g = \x -> f (g x)

multiplyBy2 :: Int -> Int
multiplyBy2 x = x * 2

subtract3 :: Int -> Int
subtract3 x = x - 3

composedFunction :: Int -> Int
composedFunction = compose multiplyBy2 subtract3

main :: IO ()
main = do
    putStrLn "Enter a list of numbers (space-separated):"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    print $ map composedFunction numbers

