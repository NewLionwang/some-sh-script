#########################################################################
# File Name: dircmp_1.0.sh
# Author: wangxiaoxian
# mail:634897019@qq,com 
# Created Time: Mon 13 Jul 2015 06:18:33 PM CST
#########################################################################
#!/bin/bash
# find  a  directory and enter the directory
# written by house
#
#  idea from rool


PWDD=`pwd`
DIRRD="$PWDD/`find $PWDD -maxdepth 2 -type d`"
for childdir in $DIRRD
do
        echo "$childdir"
        echo ""
        #cd $childdir
        #ls
        #sleep  2
        #echo ""
        #cd ..
done

exit 0
