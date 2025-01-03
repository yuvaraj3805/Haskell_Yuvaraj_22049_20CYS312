-- Define the firstElement function
firstElement :: Show a => [a] -> String  -- Add Show a constraint
firstElement [] = "Empty list"  -- If the list is empty
firstElement (x:_) = "First element is " ++ show x  -- Print the first element

-- Main function for user input
main :: IO ()
main = do
    let input = [5, 6, 7, 8, 9]  -- Initialize the list
    let result = firstElement input  -- Call the function
    putStrLn result  -- Print the result (no need to use show here)

