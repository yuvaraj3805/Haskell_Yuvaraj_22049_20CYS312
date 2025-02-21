applyOp :: (Int -> Int -> Int) -> [Int] -> Int
applyOp op [x, y] = op x y

main :: IO ()
main = do
    putStrLn "Choose an operation (+ or *):"
    operation <- getLine
    putStrLn "Enter two numbers (space-separated):"
    numbers <- fmap (map read . words) getLine :: IO [Int]
    
    let result = case operation of
                    "+" -> applyOp (+) numbers
                    "*" -> applyOp (*) numbers
                    _   -> error "Invalid operation"
    
    print result

