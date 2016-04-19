#!/bin/sh
#cmp kernel version to 2.6.10

#UNAME_NUM=`uname -a|awk '{print $3}'|sed 's/-.*//g'|sed 's/\.//g'`
UNAME_NUM=`uname -r|awk -F "-" '{print $1}'|sed 's/\.//g'`
#UNAME_NUM=$1
#echo "uname-a:\c	"
#echo `uname -a|awk '{print $3}'` 
echo $UNAME_NUM

echo ${UNAME_NUM:0:1}
echo ${UNAME_NUM:1:1}
echo ${UNAME_NUM:2}

if ((${UNAME_NUM:0:1}>"2"))
then 
	echo "higher version,need copy 3 config files to MS"		
else
	if ((${UNAME_NUM:1:1}>"6"))
	then 
		echo "higher version,need 3 config files to MS"
	else
		if ((${UNAME_NUM:2}>"10"))
		then 
			echo "higher version,need copy 3 config files to MS"
		else
			echo "don't do any changes!"
		fi
	fi
fi


