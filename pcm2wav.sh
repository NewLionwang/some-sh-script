#!/bin/sh 

set -x

SOXBIN=/usr/bin/sox
#PATH=`pwd`
#FILES=`/bin/ls ${PATH}`
FILES=`/bin/ls *.pcm`
#echo $FILE
for FILE in ${FILES}
do
    file=`/bin/basename $FILE .pcm`
    echo $file
    $SOXBIN -r 8000 -b -A -c 1 -t raw ${FILE} -r 8000 -b ${file}.wav
done 

exit 0
