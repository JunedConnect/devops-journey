#!/bin/bash

ls -lc MonitoredFolder > originallog.txt

originallog_md5sum=$(md5sum originallog.txt | awk '{print $1}')

while true
do

    ls -lc MonitoredFolder > comparisonlog.txt

    comparisonlog_md5sum=$(md5sum comparisonlog.txt | awk '{print $1}')

    if [ $originallog_md5sum != $comparisonlog_md5sum ]; then
        echo "There has been a modification made in the MonitoredFolder Directory. See below for time of modification:"
        diff originallog.txt comparisonlog.txt | awk 'NR==4{print $9}'
        break
    fi



done