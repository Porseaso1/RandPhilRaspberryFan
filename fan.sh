#!/bin/bash
t=$(vcgencmd measure_temp)
a=${t:5:4}
max=35.0
min=29.0
if [[ $a > $max ]]
then
	$(sudo python /home/pi/fan/fan.py on)
elif [[ $a < $min ]]
then
	$(sudo python /home/pi/fan/fan.py off)
fi
