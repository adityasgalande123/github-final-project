#!/bin/bash
#
# simple-interest.sh
# A simple Bash calculator that computes Simple Interest based on
# user-provided Principal, Rate of Interest, and Time Period.
#
# Formula: Simple Interest (SI) = (Principal * Rate * Time) / 100

echo "===== Simple Interest Calculator ====="

# Take input from the user
read -p "Enter Principal Amount: " principal
read -p "Enter Rate of Interest (%): " rate
read -p "Enter Time Period (in years): " time

# Calculate simple interest using awk for floating point support
simple_interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')

# Calculate total amount
total_amount=$(awk -v p="$principal" -v si="$simple_interest" 'BEGIN { printf "%.2f", p + si }')

# Display results
echo ""
echo "Principal Amount   : $principal"
echo "Rate of Interest   : $rate%"
echo "Time Period         : $time year(s)"
echo "Simple Interest     : $simple_interest"
echo "Total Amount        : $total_amount"
