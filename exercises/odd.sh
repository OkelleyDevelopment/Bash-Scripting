#!/bin/bash
# Author: Nicholas O'Kelley

# Displays the numbers 1 to 99
counter=1
while [[ $counter -le 99 ]]; do
    if [ $((counter % 2)) == 1 ]; then
        echo $counter
    fi
    ((counter++))
    
done
