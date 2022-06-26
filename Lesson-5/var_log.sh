#!/bin/bash

DIRNAME=/var/log

LIST=$(ls -laS $DIRNAME)

IFS=$'\n'
for fileLine in $LIST 
do
    IFS=" "
    for file in $fileLine
    do
        if [ -L "$DIRNAME/$file" ] 
        then
            break
        fi
        if [ -f "$DIRNAME/$file" ] 
        then
            echo "$fileLine"
        fi
    done
done > var_log_sorted.txt

