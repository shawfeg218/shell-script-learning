#!/bin/bash
# the suggested answer, there may be another way to solve this problem.

declare -a arr;

echo "Generate 3 numbers:"
for((i=0; i<3; i++))
do
	arr[$i]=$(((RANDOM % 101)*2))
	printf '%d ' ${arr[$i]}
done
printf '\n'

echo "The maximum is:"
len=${#arr[@]}
max=${arr[0]}
for((i=1; i<len; i++))
do
	if [ ${arr[$i]} -gt $max ];
	then
		max=${arr[$i]}
	fi
done
echo $max

exit 0
