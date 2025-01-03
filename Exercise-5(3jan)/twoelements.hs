-- Define the firstTwoElements function
firstTwoElements :: [a] -> [a]
firstTwoElements [] = [] --if it is empty list
firstTwoElements [x] = [x] --if it is one element
firstTwoElements (x:y:_) = [x, y] --two elements in the list

-- Main function for user input
main :: IO ()
main = do
    let input = [3,2,1,4,7,6,5] --intialize the list
    let result = firstTwoElements input --calling function
    putStrLn ("First two elements: " ++ show result) --print result
