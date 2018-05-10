#!/bin/bash
#read hello.txt into the variable txt and change the word world to the word universe.
txt=$(cat hello.txt | sed 's/world/universe/g')
#write the new version to hello2.txt.
echo "$txt" > hello2.txt
exit 0
