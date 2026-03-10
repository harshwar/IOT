import tm1637
import time

display=tm1637.TM1637(CLK=21,DIO=20)

while True:
 t=time.localtime()
 display.ShowClock(t.tm_hour,t.tm_min)
 time.sleep(1)

//2
import tm1637
import time

display = tm1637.TM1637(clk=21, dio=20)

while True:
    t = time.localtime()
    hour = t.tm_hour
    minute = t.tm_min



    display.numbers(hour, minute)
    time.sleep(1)


//3
import tm1637

display = tm1637.TM1637(clk=21, dio=20)

display.show('8888') 
