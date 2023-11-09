#!/bin/bash

ip_regex="^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$"

read -p "Enter an ip: " ip

if [[ ! $ip =~ $ip_regex ]]
then 
	echo "This is illegal"
	exit
fi

IFS="." read -a nums <<< $ip

for num in ${nums[@]}
do
	if [[ $num -gt 255 || $num -lt 0 ]]
	then 
		echo "This is illegal"
		exit
	fi
done

echo "This is legal"
