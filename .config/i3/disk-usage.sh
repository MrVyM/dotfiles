#!/bin/bash
usage=$(du -h 2> /dev/null | tail -n 1 | cut -d "." -f 1) 
if [[ $usage > 75 ]]; then 
     dunstify -t 2000 "Krystal" "Disk Usage 'Videos' : $usageG"
else 
    echo Lower
fi
