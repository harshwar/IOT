from machine import Pin
import tm1637
import time

tm = tm1637.TM1637(clk=Pin(0), dio=Pin(1))

while True:
    t = time.localtime()
    tm.numbers(t[3], t[4])
    time.sleep(1)