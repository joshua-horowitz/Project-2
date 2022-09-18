#!/bin/bash
for scripts in *.sh
do
    ## CITE: 
    ## DESC:
    if [ ! -x $scripts ]
    then
        chmod a+x $scripts
        echo "Changing "$scripts" to execute permissions"
    fi
done
