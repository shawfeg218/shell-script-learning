#!/bin/bash

time=$1

if [ -z "$1" ]
then
    echo "Please give a number!"
else
    for(( i=0; i<$time; i++ ))
    do
        if [ $((i%2)) -eq 0 ]
        then
            echo "$((i+1)): Hello!"
        else
            echo "$((i+1)): YEEEE!"
        fi
    done
fi
