productOfSquares :: [Int] -> Int
productOfSquares = foldl (*) 1 . map (^2) . filter odd

main :: IO ()
main = do
    putStrLn "Enter a list of numbers (space-separated):"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    print $ productOfSquares numbers

