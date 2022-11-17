#!/bin/bash

pokemon=('charmander' 'bulbasaur' 'squirtle')
length=${#pokemon[@]}
arr1=(1 2 3.6)
arr2=(1 2 3)

for ((i = 0; i < ${length}; i++)); do
    total=$(echo ${arr1[i]} ${arr2[i]} | awk '{printf "%2.1f\n", $1*$2}')
    echo ${pokemon[$i]}  ${total}
done
