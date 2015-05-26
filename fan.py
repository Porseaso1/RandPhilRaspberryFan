#!/usr/bin/python

import RPi.GPIO as GPIO
import sys

pin = 22 #4 #11

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)
GPIO.setup(pin, GPIO.OUT)

state = True

if(len(sys.argv) == 2):
	if(sys.argv[1] == "on"):
		GPIO.output(pin,True)
	elif(sys.argv[1] ==  "off"):
		GPIO.output(pin,False)
	else:
		print "Errore, on/off"
else:
	print "Errore"
