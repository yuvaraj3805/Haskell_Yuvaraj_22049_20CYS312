sumOfLengths :: [String] -> Int
sumOfLengths = foldl (+) 0 . map length

main :: IO ()
main = do
    putStrLn "Enter a list of strings (space-separated):"
    input <- getLine
    let strings = words input
    print $ sumOfLengths strings

