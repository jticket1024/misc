#!/bin/bash

if [[ $# -gt 0 ]]; then
    dial=($(echo "$@" | tr -cd '[:digit:]' | sed 's/\([0-9]\)/\1 /g'))
else
    dial=($(shuf -n7 -e 0 1 2 3 4 5 6 7 8 9))
fi

number=(schschschtktktktktktktktktktk schtk schtktk schtktktk schschtktktktk schschtktktktktk schschtktktktktktk schschschtktktktktktktk schschschtktktktktktktktk schschschtktktktktktktktktk)

espeak -a 200 -s 20 -p 65 [[nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn 2> /dev/null&
sleep 1.75
for i in ${dial[@]} ; do
espeak -s 350 -a 200 ${number[$i]}
sleep 0.$((RANDOM % 3 + 2))
done
