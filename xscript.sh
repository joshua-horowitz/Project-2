#!/bin/bash
for scripts in *.sh
do
    ## CITE: https://www.baeldung.com/linux/bash-check-file-executable
    ## DESC: The test command to see if a script is executable
    if [ ! -x $scripts ]
    then
        ## CITE: https://ss64.com/bash/chmod.html
        ## DESC: Documentation on the chmod command to change executable permissions
        chmod a+x $scripts
        echo "Changing "$scripts" to execute permissions"
    fi
done
