#!/bin/bash

command -v sam || {
    echo "This script requires sam to be installed."
    exit 1
}
# Find the last line of the scriptA + 1
start="$(grep -nA1 '^exit 0$' "$0" | tail -1 | cut -d- -f1)"
while : ; do
sam -sing \
    -mouth $((RANDOM % 150 + 1)) \
    -pitch $((RANDOM % 150 + 1)) \
    -speed $((RANDOM % 150 + 1)) \
    -throat $((RANDOM % 150 + 1)) \
    "$(tail -n +$start "$0" | shuf -n1)$(shuf -n1 -e "." "..." "?" "???" "!" "!!!")"
done

exit 0
fuck the fuck off
go fuck yourself
Fuck this
Fuck that
this fucking sucks
This fucking sucks ass
This fucking rocks
Fucking cunt
Fucking bitch
Fucking bastard
fucking awesome
fucking sweet
Fucking shit
fuck
fuck
fuck
fuck
John fucked Shirley
Shirley fucks
John's doing all the fucking work
Shirley talks too fucking much
Shirley is fucking beautiful
I don't give a fuck
abso fucking lutely
in fucking credible
Fuck the fucking fuckers
fuck
I got fucked at the used car lot
Awe fuck it
I guess I'm really fucked now
Don't fuck with me budy
I don't understand this fucking question
Who the fuck was that
I don't like what the fuck is going on here
He's a fuck off
Why don't you go outside and play hide and go fuck yourself
Fuck you
