#!/bin/bash

#File delete, if file has not been accessed in the past hour

EpochCurrentDate=$(date +%s)


for FILE in bin/*
do

    AccessDate=$(stat -c '%X' "$FILE")
    sum=$((EpochCurrentDate - AccessDate))
    echo $sum
    if [ $sum -gt 3600 ]
    then
        echo "this file called "$FILE" is old (more than 1 hour to be exact)"
        rm "$FILE"
    fi
    
done