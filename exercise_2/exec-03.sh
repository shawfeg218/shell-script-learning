#!/bin/bash

echo -n "Start date:"
read start_date

start_date_timestamp=$(date -d "$start_date" +%s)

echo -n "End date:"
read end_date

end_date_timestamp=$(date -d "$end_date" +%s)

date_diff=$(( (end_date_timestamp - start_date_timestamp) / 86400 ))

echo "$date_diff days"
