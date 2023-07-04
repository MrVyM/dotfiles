#!/bin/bash
currentNumber="$(date +%e)" 
replaceNumber="\${color F0C674}$currentNumber\${color white}" 
cal | sed "s/$currentNumber/$replaceNumber/" 
