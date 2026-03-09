import tm1637
import time

display=tm1637.TM1637(CLK=21,DIO=20)

while True:
 t=time.localtime()
 display.ShowClock(t.tm_hour,t.tm_min)
 time.sleep(1)