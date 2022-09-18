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
    ## CITE: https://www.diskinternals.com/linux-reader/bash-dirname/#:~:text=What%20is%20a%20bash%20dirname%20command%3F,where%20that%20file%20is%20saved.
    ## DESC: Documentation on the dirname command
    ## CITE: https://linuxize.com/post/linux-which-command/
    ## DESC: Documentation on the which command
    echo $(dirname $(which $program))
else
    allplaces=$(which -a $program)
    index=0
    for location in $allplaces
    do
        if [ $index -gt 0 ]
        then
            echo "Shadows "$location
        else
            echo $(dirname $location)
            index=$((index + 1))
        fi
    done
fi
