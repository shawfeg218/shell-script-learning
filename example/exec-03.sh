#!/bin/bash
# the suggested answer, there may be another way to solve this problem.

read -p "Start date:" s_date
read -p "End date:" e_date

cs_date=$(date -d "$s_date" +%s)
ce_date=$(date -d "$e_date" +%s)
days=$(((ce_date - cs_date) / 86400))

echo "$days days"

exit 0
