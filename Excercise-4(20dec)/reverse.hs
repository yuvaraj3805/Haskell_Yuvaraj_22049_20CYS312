-- Function to reverse a list of integers using the built-in reverse function
reverseList :: [Int] -> [Int]
reverseList xs = reverse xs  -- Use the built-in 'reverse' function to reverse the list

-- Main function to run the program
main :: IO()
main = do
    let xs = [1, 2, 3, 4]  -- Define the list to reverse
    let result = reverseList xs  -- Call reverseList to reverse the list
    putStrLn ("Reverse the list: " ++ show result)  -- Print the reversed list

