#!/bin/bash

count=0
loop=1
output=false
pitch=0
repeat=false
while [ $# -gt 0 ]; do
arg1="$1"
shift
arg2="$1"
shift
case "$arg1" in
-l|-r|--loop|--repeat)
repeat=true
;;
-o|--output)
output=true
;;
-p|--pitch)
pitch="$arg2"
;;
*)
echo "Unknown argument: $arg1 $arg2"
exit 1
esac
done
while [ $count -lt $loop ]; do
unset trackList
for i in $(shuf -e p[0-9]*.flac) ; do
trackList="${trackList}$i "
done
if [ "$output" = "true" ]; then
repeat=false
sox -qV0 ${trackList} puke-compilation.flac pitch $pitch
else
play -qV0 ${trackList} pitch $pitch
fi
if [ "$repeat" = "false" ]; then
((count++))
fi
done
exit 0
