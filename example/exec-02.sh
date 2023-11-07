#!/bin/bash
# the suggested answer, there may be another way to solve this problem.

echo "Please select a format of date:"
PS3="Which one do you want? >>"
select dformat in Canada Denmark Finland French Germany Italy "United States"
do
	case $dformat in
		Canada)
			date +%d/%m/%y
			;;
		Denmark)
			date +%Y-%m-%d
			;;
		Finland)
			date +%d.%m.%Y
			;;
		French)
			date +%d/%m/%Y
			;;
		Germany)
			date +%Y-%m-%d
			;;
		Italy)
			date +%d/%m/%y
			;;
		"United States")
			date +%m-%d-%y
			;;
		*)
			exit
			;;
	esac
done

exit 0
