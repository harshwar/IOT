import RPi.GPIO as GPIO
import telepot
from telepot.loop import MessageLoop
import time

GPIO.setmode(GPIO.BOARD)

leds={"1":11,"2":12,"3":13,"4":15}

for i in leds.values():
 GPIO.setup(i,GPIO.OUT)

def action(msg):

 text=msg['text']

 if text=="/onall":
  for i in leds.values():
   GPIO.output(i,1)

 elif text=="/offall":
  for i in leds.values():
   GPIO.output(i,0)

 elif text.startswith("/on"):
  GPIO.output(leds[text[-1]],1)

 elif text.startswith("/off"):
  GPIO.output(leds[text[-1]],0)

bot=telepot.Bot("YOUR_TOKEN")

MessageLoop(bot,action).run_as_thread()

while True:
 time.sleep(10)