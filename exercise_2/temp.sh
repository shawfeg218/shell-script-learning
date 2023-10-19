#!/bin/bash

echo -n "Enter an ip: "
read ip

regx="^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$"

if [[ ! $ip =~ $regx ]]
then
	echo "Is illegal."
	exit
fi


#Internal Field Separator
IFS='.' read -a nums <<< "$ip"
for num in "${nums[@]}"
do
	if [[ $num -lt 0 || $num -gt 255 ]]
	then
		echo "Is illegal."
		exit
	fi
done

echo "Is legal."
