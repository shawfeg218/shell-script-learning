#!/bin/bash

echo "How many times should I say?"
read time

for(( i=0; i<$time; i++ ))
do
    if [ $((i%2)) -eq 0 ]
    then
        echo "$((i+1)): Hello!"
    else
        echo "$((i+1)): YEEEE!"
    fi
done
