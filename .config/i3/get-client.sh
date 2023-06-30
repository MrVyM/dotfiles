#!/bin/bash

sinkId=$(pactl list sink-inputs | grep -B 17 "Spotify" | grep Input | cut -d "#" -f 2) 
echo $sinkId
