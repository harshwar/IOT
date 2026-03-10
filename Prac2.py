import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BOARD)

LED = 11

GPIO.setup(LED, GPIO.OUT)

while True:
    GPIO.output(LED, 1)
    time.sleep(1)

    GPIO.output(LED, 0)
    time.sleep(1)