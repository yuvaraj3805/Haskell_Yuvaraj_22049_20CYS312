type Student = (String, Int, [Int])  -- (Name, Roll number, Marks)

-- Recursive function to calculate the average marks
averageMarks :: [Int] -> Double
averageMarks [] = 0  -- Base case: empty list of marks
averageMarks marks = fromIntegral (sum marks) / fromIntegral (length marks)  -- Sum and divide by length

-- Function to display all student names and their average marks
displayAverages :: [Student] -> [(String, Double)]
displayAverages [] = []  -- Base case: no students
displayAverages ((name, _, marks):students) = (name, averageMarks marks) : displayAverages students

-- Main function
main :: IO ()
main = do
    let students = [("Yuvaraj", 101, [90, 85, 88]), ("Ravi", 102, [78, 82, 80])]
    let averages = displayAverages students
    mapM_ (\(name, avg) -> putStrLn (name ++ ": " ++ show avg)) averages

