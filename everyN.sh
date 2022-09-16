#!/bin/bash
guess sequence
N=2
index=0
for number in "$@"
do
    index=$((index + 1))
    if [ $index -eq 1 ]
    then
        N=$number
    else
        temp=$N
        N=$(($number % $temp))
done
#The order of the input is the tricky part
for num in $(sequence)
do
    if [ ($num % $N) -eq 0]
    then
        echo $num
done
