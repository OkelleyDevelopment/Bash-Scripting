#!/bin/bash
# Solution for the Triangle problem on HackerRank 
#
# Author: Nicholas O'Kelley
# Date: Jan 30, 2022

read s1
read s2
read s3

if [[ ${s1} -eq ${s2} ]] && [[ ${s1} -eq ${s3} ]]; then
    echo EQUILATERAL
elif [[ ${s1} -eq ${s2} ]] && [[ ${s1} -ne ${s3} ]]; then
    echo ISOSCELES
elif [[ ${s2} -eq ${s3} ]] && [[ ${s2} -ne ${s1} ]]; then
    echo ISOSCELES
else 
    echo SCALENE
fi

