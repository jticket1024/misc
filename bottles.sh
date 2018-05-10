#!/bin/bash
#optionally let user set starting number of bottles on the wall.
if [ "$#" -ne "1" ] ; then
bottles="99"
else
#example of or || in an if statement
#also an example of a nested if statement, an if statement inside an if statement.
#make sure the range falls between 98 and 1
if [[ "$1" -gt "98" || "$1" -lt "1" ]] ; then
bottles=99
else
bottles="$1"
fi
fi
#While loop to count down through the bottles.
while [ "$bottles" -gt "0" ] ; do
echo -n "$bottles bottles of beer on the wall, $bottles bottles of beer. You take 1 down, pass it around, "
bottles="$(($bottles - 1))"
#if statement to make the song correct by saying no more bottles of beer instead of 0
if [ "$bottles" -gt 0 ] ; then
echo "$bottles bottles of beer on the wall."
else
echo "No more bottles of beer on the wall."
fi
done
exit 0
