#!/bin/bash

echo "Please select a format of date:"
PS3="Which one do you want? >> "

select format in Canada Denmark Finland French Germany Italy "United States"
do
	case $format in
		Canada) date '+%d/%m/%y';;
		Denmark) date '+%Y-%m-%d';;
		Finland) date '+%d.%m.%Y';;
		French) date '+%d/%m/%Y';;
		Germany) date '+%Y-%m-%d';;
		Italy) date '+%d/%m/%y';;
		"United States") date '+%m-%d-%y';;
		*) echo "You press the wrong key!"
		       exit;;
	esac
done	
