#!/bin/bash
guess extensionFrom
guess extensionTo
guess directoryName
files=../bash/*.sh
for file in $files
do
mv "$file" "$((basename $file ".$extensionFrom").$extensionTo)"
done
