#!/bin/bash

echo "Please input a small number."
echo "1 is usually fine."
read small
echo "You input the number $small"

echo "Please input a bigger number."
echo "2 is usually fine."
read big

echo "Please input the number of times"
echo "you wish the program to perform"
echo "the addition."
echo "10 is usually fine."
read repeat

times="1"
let "repeating = $repeat + 2"

while [ $times -lt $repeating ]; do
    let "bigger = $small + $big"
    small=$big
    big=$bigger
    let "times = $times + 1"
done

echo "$small" "$big"
