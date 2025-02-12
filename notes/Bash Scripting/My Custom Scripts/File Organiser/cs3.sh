#!/bin/bash

# File Organiser



Files=$(find . -name "*.*")


for File in $Files;
do

    if [ "$File" == "./cs3.sh" ]    # Skip the script file (cs3.sh)
    then
        continue
    fi

    echo $File
    Extension=${File##*.}           # extracts only the file extension

    if [ -d $Extension ]            # If the directory for the extension exists, move the file there
    then
        mv "$File" "$Extension"
    else                            # Otherwise, create the directory and move the file there
        mkdir "$Extension"
        mv "$File" "$Extension"
    fi

done
