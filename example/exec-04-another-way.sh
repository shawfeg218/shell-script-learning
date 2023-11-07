#!/bin/bash

read -p "Check the ip is legal or not:" ipaddress

if [[ $ipaddress =~ ^([0-9]{1,3}\.{1}){3}[0-9]{1,3}$ ]]; 
then
	OIFS=$IFS
	IFS="."
	arr=($ipaddress)
	IFS=$OIFS
	if [[ "${arr[0]}" -le 255 && "${arr[1]}" -le 255 && "${arr[2]}" -le 255 && "${arr[3]}" -le 255 ]];
	then	
		echo "Is legal."
	else
		echo "Is illegal."
	fi
else
	echo "Is illegal."
fi

exit 0
