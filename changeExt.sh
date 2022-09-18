#!/bin/bash
extensionFrom=$1
extensionTo=$2
directoryName=$3
files=../$directoryName
for file in $files.$extensionFrom
do
mv "$file" "${file%$extensionFrom}$extensionTo"
done
