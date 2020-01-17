import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BOARD)
GPIO.setup(37,GPIO.OUT)
GPIO.setup(35,GPIO.OUT)
GPIO.setup(33,GPIO.OUT)
GPIO.setup(40,GPIO.IN)
GPIO.setup(38,GPIO.IN)
GPIO.setup(36,GPIO.IN)
GPIO.output(37,GPIO.input(40))
GPIO.output(35,GPIO.input(38))
GPIO.output(33,GPIO.input(36))
while True:
#    GPIO.output(37,1)
    GPIO.output(37,GPIO.input(38))
    GPIO.output(35,GPIO.input(36))
    if(GPIO.input(40) == 1):
        print("GPIO(40) set 1\n\r")
    else:
        print("GPIO(40) set 0\n\r")
    if(GPIO.input(38) == 1):
        print("GPIO(38) set 1\n\r")
    else:
        print("GPIO(38) set 0\n\r")
    if(GPIO.input(36) == 1):
        print("GPIO(36) set 1\n\r")
    else:
        print("GPIO(36) set 0\n\r")        
    time.sleep(1)