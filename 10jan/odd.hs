filterAndFold :: (a -> Bool) -> (b -> a -> b) -> b -> [a] -> b
filterAndFold p op result [] = result
filterAndFold p op result (x:xs)
    | p x       = filterAndFold p op (op result x) xs
    | otherwise = filterAndFold p op result xs

sumOfOdds :: [Int] -> Int
sumOfOdds = filterAndFold odd (+) 0

main :: IO ()
main = do
    putStrLn "Enter a list of numbers (space-separated):"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    print $ sumOfOdds numbers

