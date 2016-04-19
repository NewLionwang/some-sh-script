#!/bin/bash
#split a big file to little files,100 lines,files' name postfix len 5
#get little files name to the .index file
allfilenames=$1
split -l 100 -d -a 5 ${allfilenames} tasks/${allfilenames}_
files=$(find tasks/ -type f -name "${allfilenames}*")
for file in ${files}; do
	basename ${file} >> ${allfilenames}_task.index
done
