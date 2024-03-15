#!/bin/bash

a=10
b=20
c=150
d=$((a * b))
e=$((d / c))
if [ a -gt b ] then
    echo "printing the value of d : $d"
    exit 1
fi
