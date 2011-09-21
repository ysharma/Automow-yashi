#include <ArduinoHardware.h>
#include <ros.h>
#include <Automow_PCB/Status.h>
#include <Automow_PCB/cutter_control.h>
#include <Automow_PCB/batt_status.h>

#include "WProgram.h"
#include <stdio.h>
#include <OneWire.h>
#include <DallasTemperature.h>
#include <Metro.h>

#define cutterLeftPin 4
#define cutterRightPin 5
#define cutterLeftStatusPin 2
#define cutterRightStatusPin 3
#define tempTopPin 9
#define tempBotPin 10
#define voltPin 0
#define currentPin 1
#define LEDPin1 6
#define LEDPin2 7
#define LEDPin3 8



OneWire oneWireTop(tempTopPin);
OneWire oneWireBot(tempBotPin);
DallasTemperature temperatureTop(&oneWireTop);
DallasTemperature temperatureBot(&oneWireBot);

Metro LED = Metro(500);
int batteryStatus=0;

ros::NodeHandle nh;
Automow_PCB::Status msg;

void handleCutters(const Automow_PCB::cutter_control& c);
void handleBattery(const Automow_PCB::batt_status& b);

ros::Publisher ARData_pub("ARData", &msg);
ros::Subscriber<Automow_PCB::cutter_control> cutterControl("Cutter_Control", &handleCutters);
ros::Subscriber<Automow_PCB::batt_status> battControl("Battery_Status", &handleBattery);

void setup()
{
  pinMode(cutterLeftPin , OUTPUT);
  pinMode(cutterRightPin, OUTPUT);
  pinMode(LEDPin1, OUTPUT);
  pinMode(LEDPin2, OUTPUT);
  pinMode(LEDPin3, OUTPUT);
  pinMode(cutterLeftStatusPin, INPUT);
  pinMode(cutterRightStatusPin, INPUT);  
  
  digitalWrite(LEDPin1, true);
  digitalWrite(LEDPin2, true);
  digitalWrite(LEDPin3, true);
  
  nh.initNode();
  nh.advertise(ARData_pub);
  nh.subscribe(cutterControl);
  nh.subscribe(battControl);
}

void loop()
{
  msg.cutter_left = digitalRead(cutterLeftStatusPin);
  msg.cutter_right =digitalRead(cutterRightStatusPin);
  msg.LEDstatus = digitalRead(LEDPin1)+2*digitalRead(LEDPin2)+4*digitalRead(LEDPin3);
  msg.temp1 = temperatureTop.getTempCByIndex(0);
  msg.temp2 = temperatureBot.getTempCByIndex(0);
  msg.voltage = analogRead(voltPin);
  msg.current = analogRead(currentPin);
  
  ARData_pub.publish(&msg);
  
  nh.spinOnce();
  delay(1000);

}

void handleCutters(const Automow_PCB::cutter_control& c)
{  
  digitalWrite(cutterLeftPin, c.cutter_left);
  digitalWrite(cutterRightPin, c.cutter_right);
  
  delay(10);
  
  if(digitalRead(cutterLeftStatusPin) != c.cutter_left)
    {
      digitalWrite(cutterLeftPin, LOW);
    }
  if(digitalRead(cutterRightStatusPin) != c.cutter_right)
    {
      digitalWrite(cutterRightPin, LOW);
    }  
}

void handleBattery(const Automow_PCB::batt_status& b)
{
  digitalWrite(LEDPin1, b.LED1);
  digitalWrite(LEDPin2, b.LED2);
  digitalWrite(LEDPin3, b.LED3);
}
