#!/bin/bash
echo "Enter the X value: "
read X
echo "Enter the Y value: "
read Y

(( $X > $Y)) && echo 'X is greater than Y'
(( $X < $Y)) && echo 'X is less than Y'
(( $X == $Y)) && echo 'X is equal to Y'
