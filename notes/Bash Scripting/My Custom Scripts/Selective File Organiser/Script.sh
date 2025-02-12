#!/bin/bash

# File Organiser modified to sort only with an extension that you decide


Files=$(find . -name "*.*")


echo "Please enter the extension name that you would like a folder for all relevant files collation"
read MyExtension


if [ ! -d $MyExtension ]            # If the directory for the extension exists, move the file there
then
    mkdir "$MyExtension"
fi


for File in $Files;
do

    if [ "$File" == "./cs3.sh" ]    # Skip the script file (cs3.sh)
    then
        continue
    fi

    echo $File
    Extension=${File##*.}           # extracts only the file extension

    if [ $Extension == $MyExtension ] # If the extension of the file matches that extension of what the user has asked for, move the file there
    then
        mv "$File" "$Extension"
    else                            # Otherwise, skip this file and move on to the next file
        continue
    fi

done