-- Define the describePair function
describePair :: (Int, Int) -> String
-- position of origin in tuple  
describePair (0, 0) = "Origin"
describePair (0, _) = "X-Axis"
describePair (_, 0) = "Y-Axis"
describePair (_, _) = "Other"

-- Main function for user input
main :: IO ()
main = do
    let input = (0,5) -- initalize the value
    let result = describePair input --calling function
    putStrLn result --print result

