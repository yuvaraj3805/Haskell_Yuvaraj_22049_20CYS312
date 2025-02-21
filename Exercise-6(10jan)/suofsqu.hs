sumOfSquares :: [Int] -> Int
sumOfSquares = sum . map (^2) . filter (<= 10)

main :: IO ()
main = do
    putStrLn "Enter a list of numbers (space-separated):"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    print $ sumOfSquares numbers

