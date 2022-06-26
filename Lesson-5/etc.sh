#!/bin/bash

DIRNAME=/etc

LIST=$(ls -lsa $DIRNAME)

IFS=$'\n'
for fileLine in $LIST 
do
    IFS=" "
    for file in $fileLine
    do
        if [ -d "$DIRNAME/$file" ] 
        then
            echo "$fileLine"
        fi
    done
done > etc_dir.txt

