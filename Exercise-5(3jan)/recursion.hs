-- Define the listLength function
listLength :: [a] -> Int
listLength [] = 0 --if list is zero
listLength (_:xs) = 1 + listLength xs --count the values in the list

-- Main function for user input
main :: IO ()
main = do
    let input = [1,2,3,4,5] --intialize the list
    let result = listLength input --calling function
    putStrLn ("Length of the list: " ++ show result) --print result

