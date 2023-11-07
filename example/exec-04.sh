#!/bin/bash
# the suggested answer, there may be another way to solve this problem.

read -p "Check the ip is legal or not:" ipaddress

if [[ $ipaddress =~ ^((25[0-5]|(2[0-4]|1[0-9]|[1-9]|)[0-9])(\.{1})){3}(25[0-5]|(2[0-4]|1[0-9]|[1-9]|)[0-9])$ ]]; 
then
	echo "Is legal."
else
	echo "Is illegal."
fi

exit 0
