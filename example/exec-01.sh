#!/bin/bash
# the suggested answer, there may be another way to solve this problem.

read -p "How tall are you? (cm):" height
read -p "How much do you weigh? (kg):" weight

bmi=$(echo "scale=2; $weight/(($height/100)^2)" |bc)
echo "----------Result----------"
echo "Your BMI is $bmi"

exit 0
