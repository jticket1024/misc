#!/bin/bash
#seed random number with /dev/random
RANDOM=$(od -An -N2 -i /dev/random)
msg=("wishing you all the best on your special day!" 'Happy birthday to you, happy birthday to you... *rinse and repeat*' "It's your birthday, what a good reason to party!" "Inside every older person is a younger person wondering what the hell happened." "You know you are old when the candles cost more than the cake!" "If you were born 00:00UTC 1/1/1970 You'd be $(date +"%s") seconds old!" "Birthdays are good for you. Statistics show that the people who have the most live the longest." "Age doesn't matter, unless you are a cheese." "For all the advances in medicine, there is still no cure for the common birthday." "When I turned 2 I was anxious, because I'd doubled my age in a year." "Today the candle factory burned down. Everyone just stood around and sang," "Once you're over the hill you begin to pick up speed." "Old age isn't so bad when you consider the alternative." "You may not be over the hill yet, but you have a great view!" "1 more year of existence down the drain." "Don't think of it as getting older, think of it as becoming a classic." "All the candles on your cake are causing global warming!")
num=$(($RANDOM % ${#msg[@]}))
echo "${msg[$num]} Happy Birthday!"
exit 0

