composeFilterMap :: (a -> Bool) -> (a -> b) -> [a] -> [b]
composeFilterMap p f = map f . filter p

squareSmallNumbers :: [Int] -> [Int]
squareSmallNumbers = composeFilterMap (<= 5) (^2)

main :: IO ()
main = do
    putStrLn "Enter a list of numbers (space-separated):"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    print $ squareSmallNumbers numbers

