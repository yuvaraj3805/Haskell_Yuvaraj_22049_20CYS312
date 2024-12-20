-- Function to multiply each element of the list by the multiplier n
multiplyElements :: [Int] -> Int -> [Int]
multiplyElements xs n = [x * n | x <- xs]  -- List comprehension to multiply each element



-- Main function 
main :: IO ()
main = do
     let xs = [4,5,7,8,9] --Elements in the list
     let n = 5            --Taking value for n
     let result = multiplyElements xs n --Multiply the elements in the list with value n
     putStrLn("Multiply Elements in the list:" ++ show result) --Display Result
