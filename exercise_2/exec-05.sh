#!/bin/bash

declare -i random_a=($RANDOM%101)*2
declare -i random_b=($RANDOM%101)*2
declare -i random_c=($RANDOM%101)*2

echo "Generate 3 numbers:"
echo "$random_a $random_b $random_c"

max_num=$random_a

if [ $random_b -gt $max_num ]
then
	max_num=$random_b
fi

if [ $random_c -gt $max_num ]
then
	max_num=$random_c
fi

echo "The maximum is:$max_num"
