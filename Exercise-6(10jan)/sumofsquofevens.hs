sumOfSquaresOfEvens :: [Int] -> Int
sumOfSquaresOfEvens = sum . map (^2) . filter even

main :: IO ()
main = do
    putStrLn "Enter a list of numbers (space-separated):"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    print $ sumOfSquaresOfEvens numbers

