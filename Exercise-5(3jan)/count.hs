-- Define the countElements function
countElements :: [a] -> Int
countElements [] = 0  --If list contains empty then it prints 0
countElements xs = length xs --count the length of the list

-- Main function for user input
main :: IO ()
main = do
     let xs = [1,2,3,4,5,6] --Intializing the list
     let result = countElements xs --calling function
     putStrLn (show result)  -- Print the number of elements

