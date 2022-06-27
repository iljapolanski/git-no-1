#!/bin/bash

DIRNAME=/etc

LIST=$(ls -lsa $DIRNAME)

IFS=$'\n'
for fileLine in $LIST 
do
    file=$(echo "$fileLine" | tr -s ' ' | cut -d ' ' -f 11)
    if [ -d "$DIRNAME/$file" ]
    then
        echo "$fileLine"
    fi
done > etc_dir.txt

