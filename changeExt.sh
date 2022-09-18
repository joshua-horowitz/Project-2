#!/bin/bash
extensionFrom=$1
extensionTo=$2
directoryName=$3
files=../$directoryName
for file in $files.$extensionFrom
do
    ## CITE: https://linuxhint.com/linux-mv-command-examples/
    ## DESC: Documentation on the mv command
    ## CITE: https://tldp.org/LDP/abs/html/parameter-substitution.html
    ## DESC: Documentation on replacing parts of a substring
    mv "$file" "${file%$extensionFrom}$extensionTo"
done
