espeak-ng --stdout -v en-us -a 200 -s $(shuf -n 1  -e {200..2500}) "hu$( for i in {1..250} ; do echo -n "mp";done)" | play -t wav - norm $(shuf -n1 -e flanger overdrive reverb phaser reverse) norm
