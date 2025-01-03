-- Define the sumTuple function
sumTuple :: (Int, Int) -> Int
sumTuple (x, y) = x + y -- sum of the values in the list

-- Main function for user input
main :: IO ()
main = do
    let x = 9 --intializing the x value
    let y = 5 --intializing the x value
    let result = sumTuple (x, y) --calling function
    putStrLn ("Sum of the tuple: " ++ show result) --print sum 
