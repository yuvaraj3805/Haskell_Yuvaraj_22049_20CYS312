--Function to filter even number in the list
filterList :: [Int] -> [Int]
filterList xs = filter even xs


main :: IO()
main = do
     let xs = [1,2,3,4,5,6,7,8,9,10] -- Intializing the list
     let result = filterList xs --Filter the even numbers in the list
     putStrLn("Even values:" ++ show result) --Display Result
