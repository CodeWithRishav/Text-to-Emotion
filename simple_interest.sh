#!/bin/bash

# Function to calculate simple interest
calculate_interest() {
    principal=$1
    rate=$2
    time=$3
    
    # Calculate simple interest
    interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
    
    echo "Simple Interest: $interest"
}

# Read inputs from the user
read -p "Enter the principal amount: " principal
read -p "Enter the interest rate (in percentage): " rate
read -p "Enter the time period (in years): " time

# Call the function to calculate the simple interest
calculate_interest $principal $rate $time
This script takes user inputs for the principal amount, interest rate, and time period in years. It then uses a function calculate_interest to calculate the simple interest by multiplying the principal amount, interest rate, and time period and dividing it by 100. The calculated interest is then displayed to the user.

To run the script, save it to a file named simple_interest.sh, make it executable using the command chmod +x simple_interest.sh, and then run it using ./simple_interest.sh. Follow the prompts to enter the required inputs, and the script will calculate and display the simple interest
