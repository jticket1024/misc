#!/bin/bash
#start the game's main loop
#Continue the game until the player exits with anything other than y
while [ "$continue" != "n" ] ; do
#seed random number with /dev/random
RANDOM=$(od -An -N2 -i /dev/random)
#get the computer's random number between 1 and 10
gameNumber=$(($RANDOM % 10 + 1))
#Initialize guess variable so it is a digit so we don't get an error in the next loop.
guess=0
#Initialize the guess counter, it will at least take 1 try to get the number right.
guessCount=1
#Loop until the player guesses the number.
while [ "$guess" -ne "$gameNumber" ] ; do
read -p "Enter your guess between 1 and 10. " guess
#Here is an if with elif multiple elses
if [ "$guess" -lt "$gameNumber" ] ; then
echo "You guessed too low."
guessCount=$(($guessCount + 1))
elif [ "$guess" -gt "$gameNumber" ] ; then
echo "You guessed too high."
guessCount=$(($guessCount + 1))
else
echo "Right on! You guessed the number in $guessCount tries! You rock!"
fi
done
#find out if the player wants to play again.
read -p "Play again? (y or n) " continue
done
exit 0

