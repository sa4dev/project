#!/bin/sh
cat list.list |  while read output
do
    ping -c 3 "$output" > /dev/null
    if [ $? -eq 0 ]; then
    echo "Site $output is up" 
    else
    echo "Site $output is down"
    fi
done

