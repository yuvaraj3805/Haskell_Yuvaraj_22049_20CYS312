-- Define the isZero function
isZero :: Int -> String
 -- Checking  if given number is equal to zero or not
isZero 0 = "The number is zero" 
isZero _ = "The number is not equal to zero"

-- Main function to call isZero and print the result
main :: IO ()
main = do
    let a = 5 -- Intialize the a value
    let result = isZero a  --calling function 
    putStrLn result  -- Print the result
