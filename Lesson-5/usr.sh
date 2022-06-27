#!/bin/bash

DIRNAME=/usr

LIST=$(ls -lsa $DIRNAME)

IFS=$'\n'
for fileLine in $LIST 
do
    file=$(echo "$fileLine" | tr -s ' ' | cut -d ' ' -f 11)
    if [ -x "$DIRNAME/$file" ]
    then
        if [ -f "$DIRNAME/$file" ]
        then
            echo "$fileLine"
        fi
    fi
done > executable.txt

