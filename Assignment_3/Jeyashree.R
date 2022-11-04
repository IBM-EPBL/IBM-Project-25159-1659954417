 ASSIGNMENT-3
 
 Question:
 
       Write python code for blinding LED and Traffic lights for Raspbeery pi.
       
 //Code for blinking LED
 
import RPi.GPIO as GPIO 
import time
LED = 40 
GPIO.setwarnings(False)
GPIO.setmode(GPIO.BOARD) 
GPIO.setup(LED, GPIO.OUT)	
while True:
  GPIO.output(LED,GPIO.HIGH)
  time.sleep(1)   
  GPIO.output(LED,GPIO.LOW)
  time.sleep(1)
 
 //Code for Traffic Light System
 
from gpiozero import Button,trafficLights,Buzzer 
from time import sleep	
buzzer = Buzzer(15) 
button = Button(21)	
lights = TrafficLights(25, 8, 7)	
while True:
  button.wait_for_press() 
  buzzer.on()   
  light.green() 
  sleep(3)
  lights.amber.on() 
  sleep(1) 
  lights.red.on()
  sleep(3)	
  lights.off() 
  buzzer.off()
  


      
 

