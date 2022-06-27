#!/bin/bash

DIRNAME=/var/log

LIST=$(ls -laS $DIRNAME)

IFS=$'\n'
for fileLine in $LIST 
do
    file=$(echo "$fileLine" | tr -s ' ' | cut -d ' ' -f 9)
    if [ -L "$DIRNAME/$file" ] 
    then
        continue
    fi
    if [ -f "$DIRNAME/$file" ] 
    then
        echo "$fileLine"
    fi
done > var_log_sorted.txt

