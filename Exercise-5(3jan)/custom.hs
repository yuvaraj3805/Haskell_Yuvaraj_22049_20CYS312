-- Define the Color data type
data Color = Red | Green | Blue
  deriving (Read, Show)  -- This is necessary for reading and showing the color

-- Define the describeColor function
describeColor :: Color -> String
-- Pattern matching based on color
describeColor Red = "This is Red"
describeColor Green = "This is Green"
describeColor Blue = "This is Blue"

-- Main function for user input
main :: IO ()
main = do
    putStrLn "Enter a color (Red, Green, Blue):"--enter any color
    input <- readLn :: IO Color --it takes input 
    let result = describeColor input --calling function
    putStrLn result --print the color matching
