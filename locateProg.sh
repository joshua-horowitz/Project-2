#!/bin/bash
index=0
for variables in "$@"
do
    if [ $index -eq 0 ]
    then
        program=$variables
        index=$((index + 1))
    else
        allfiles=$variables
        index=$((index + 1))
    fi
done

if [ $index -eq 1 ]
then
    echo $(dirname "$(which $program)")
else
    res=$(which -a $program)
    index=0
    for r in $res
    do
        if [ $index -gt 0 ]
        then
            echo "Shadows "$r
        else
            echo $(dirname $r)
            index=$((index + 1))
        fi
    done
fi
