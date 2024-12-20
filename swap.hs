-- Function to swap elements of a tuple
swapTuple :: (a, b) -> (b, a)
swapTuple (a, b) = (b, a)

-- Main function
main :: IO ()
main = do
  let a = 2  -- First element
  let b = 3  -- Second element
  let result = swapTuple(a, b)  -- Swap the tuple
  putStrLn ("swap of tuple is: " ++ show result)  -- Display the result
