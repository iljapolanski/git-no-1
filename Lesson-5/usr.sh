#!/bin/bash

DIRNAME=/usr

LIST=$(ls -lsa $DIRNAME)

IFS=$'\n'
for fileLine in $LIST 
do
    IFS=" "
    for file in $fileLine
    do
        if [ -x "$DIRNAME/$file" ] 
        then
            if [ -f "$DIRNAME/$file" ]
            then
                echo "$fileLine"
            fi
        fi
    done
done > executable.txt

