#!/bin/bash
HEADER=$(ps -aux | head -n1)
PROCESS_LINES=$(ps -aux | grep "apache2" | grep -v "grep")
echo $HEADER

IFS=$'\n'
for LINE in $PROCESS_LINES 
do
    echo $LINE
    APACHE_PID=$(echo $LINE | tr -s ' ' | cut -d ' ' -f2)
    sudo kill -9 $APACHE_PID
    echo "Process httpd $APACHE_PID stopped"
done
