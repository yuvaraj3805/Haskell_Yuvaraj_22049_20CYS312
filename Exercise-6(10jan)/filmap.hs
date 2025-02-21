filterAndMap :: (a -> Bool) -> (a -> b) -> [a] -> [b]
filterAndMap p f = map f . filter p

doubleEvens :: [Int] -> [Int]
doubleEvens = filterAndMap even (*2)

main :: IO ()
main = do
    putStrLn "Enter a list of numbers (space-separated):"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    print $ doubleEvens numbers

