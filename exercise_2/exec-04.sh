#!/bin/bash

echo -n "Check the ip is legal or not:"
read ip

ipv4_regex="^([0-9]{1,3})\.([0-9]{1,3})\.([0-9]{1,3})\.([0-9]{1,3})$"

if [[ ! $ip =~ $ipv4_regex ]]
then
	echo "Is illegal."
	exit
fi

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
