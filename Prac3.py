import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BOARD)

leds=[11,12,13,15]

for i in leds:
 GPIO.setup(i,GPIO.OUT)

while True:
 for i in leds:
  GPIO.output(i,1)
  time.sleep(1)
  GPIO.output(i,0)