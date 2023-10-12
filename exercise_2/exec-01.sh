#!/bin/bash

echo -n "How tall are you? (cm):"
read h

echo -n "How much do you weigh? (kg):"
read w

h_m=$(echo "scale=2; $h/100" | bc)

bmi=$(echo "scale=2; $w/($h_m*$h_m)" | bc)

echo "-----------Result-------------"
echo "Your BMI is $bmi"


