#!/bin/sh 
#16k,16bit,convert to 8k,16bit,1 channel,u-law
set -x

SOXBIN=/usr/bin/sox
#PATH=`pwd`
#FILES=`/bin/ls ${PATH}`
FILES=`/bin/ls *.wav`
for FILE in ${FILES}
do
    file=`/bin/basename $FILE .wav`
    echo $FILE
    $SOXBIN -r 16000 ${FILE} -w -u -c 1 -r 8000 ./ok_wav/${file}.wav
done

exit 0

