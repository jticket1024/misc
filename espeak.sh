espeak --stdout -v en-us -s $(shuf -n 1  -e {200..2500}) "$( for i in {1..250} ; do echo -n "qu ";done)" | play -t wav - norm $(shuf -n1 -e flanger overdrive reverb phaser reverse)
