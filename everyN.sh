#!/bin/bash
sequence=$(cat)

index=0
for number in "$@"
do
    if [ $index -eq 0 ]
    then
        N=$number
    else
        temp=$N
        N=$(expr $number % $temp)
    fi
    index=$((index + 1))
done

if [ $index -eq 0 ]
then
    N=2
fi

for num in $sequence
do
    temp=$((num - 1))
    mod=$(expr $temp % $N)
    if [[ $mod -eq 0 ]]
    then
        echo $num
    fi
done
