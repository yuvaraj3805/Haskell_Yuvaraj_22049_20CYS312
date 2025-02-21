fn main() {
    // Initialize the starting number
    let mut num = 1;

    // While loop to print odd numbers
    while num <= 20 {
        if num % 2 != 0 {
            println!("{}", num); // Print odd numbers
        }
        num += 2; // Increment by 2 to keep the number odd
    }
}

