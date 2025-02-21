use std::io;

fn main() {
    // Take an integer as input
    let mut input = String::new();
    println!("Enter an integer:");
    io::stdin().read_line(&mut input).expect("Failed to read line");

    let num: i32 = input.trim().parse().expect("Please type a number");

    // Check if the number is even or odd
    if num % 2 == 0 {
        println!("Even");
    } else {
        println!("Odd");
    }
}

