#!/bin/bash

echo "Please select a format of date:"
select format in Canada Denmark Finland French Germany Italy UnitedStates
do
	case $format in
		Canada) date '+%2d/%2m/%2Y';;
		Denmark) date '+%Y-%2m-%2d';;
		Finland) date '+%2d-%2m-%Y';;
		French) date '+%2d/%2m/%Y';;
		Germany) date '+%Y-%2m-%2d';;
		Italy) date '+%2d/%2m/%2Y';;
		UnitedStates) date '+%2m-%2d-%2Y';;
		*) echo "You press the wrong key!"
			exit;;
	esac
done
