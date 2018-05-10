#!/bin/bash
#Make sure we get 2 sets of words.
if [ "$(($# % 3))" -ne 0 ] ; then
echo "This script requires a group of 3 words as in wheels go round. or horn goes beep You can use as many sets of 3 words as you would like."
exit 1
fi
while [ "$#" -gt "0" ] ; do
echo "The $1 on the bus $2 $3 $3 $3, $3 $3 $3, $3 $3 $3. The $1 on the bus $2 $3 $3 $3 all through the town."
shift
shift
shift
done
exit 0
