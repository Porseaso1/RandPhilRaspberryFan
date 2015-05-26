#!/bin/bash
t=$(vcgencmd measure_temp)
a=${t:5:4}
#echo $a

max=35.0
min=29.0

if [[ $a > $max ]]
then
	$(sudo python /home/pi/fan/fan.py on)
	#echo "$a > $max : ventola ON"
elif [[ $a < $min ]]
then
	$(sudo python /home/pi/fan/fan.py off)
	#echo "$a < $min : ventola OFF"
#else
	#echo "$min < $a < $max"
fi
