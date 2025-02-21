productOfDoubles :: [Int] -> Int
productOfDoubles = foldl (*) 1 . map (*2) . filter (<= 10)

main :: IO ()
main = do
    putStrLn "Enter a list of numbers (space-separated):"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    print $ productOfDoubles numbers

