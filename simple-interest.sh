#!/bin/bash
# simple-interest.sh
# A simple calculator to compute simple interest based on user input.
# Formula: Simple Interest (SI) = (Principal x Rate x Time) / 100

echo "----- Simple Interest Calculator -----"

read -p "Enter Principal amount: " principal
read -p "Enter Rate of Interest (in %): " rate
read -p "Enter Time period (in years): " time

# Calculate simple interest using bc for floating point support
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

echo "---------------------------------------"
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate%"
echo "Time Period      : $time year(s)"
echo "Simple Interest  : $simple_interest"
echo "---------------------------------------"
