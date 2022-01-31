#!/bin/bash

echo 'how many days till we hike?'

read answer

if [ $answer -gt 1 ]
then
    echo $answer 'days remain'
else
    echo 'Woo we ride at dawn b*tches'
fi
