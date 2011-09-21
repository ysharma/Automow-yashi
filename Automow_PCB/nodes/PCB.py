#!/usr/bin/env python
# Cutter status/control, Temperaturex2(9/10), Current sensor, voltage sensor, 2 digital latches blade status, 2 DO blade control, 3 LED IO  import roslib; roslib.load_manifest('Automow_PCB')

import roslib; roslib.load_manifest('Automow_PCB')
import rospy
from std_msgs.msg import String
from Automow_PCB.msg import *

diag = {}

def handle_events():
	rospy.init_node('Automow_PCB')
        while not rospy.is_shutdown():
	     Battery_Status_Pub()
	     Cutter_Control_Pub()
	     ARData_Sub()
	     rospy.sleep(1)
    
	

def Cutter_Control_Pub(l=0, r=0):
	pub = rospy.Publisher('Cutter_Control', cutter_control)
	pub.publish(l, r)

def Battery_Status_Pub(LED1=1, LED2=1, LED3=1, percent=99):
    	pub = rospy.Publisher('Battery_Status', batt_status)
    	pub.publish(LED1, LED2, LED3, percent)
	
def Battery_Status_Sub():
    	rospy.Subscriber("Battery_Data", batt_status, NULL)

def ARData_Sub():
	rospy.Subscriber("ARData", Status, AR_handler)
	rospy.spin()

def AR_handler(data):
	diag['cutter_left'] = data.cutter_left
	diag['cutter_right'] = data.cutter_right
	diag['LEDstatus'] = data.LEDstatus
    	diag['tempTop'] = data.temp1
	diag['tempBot'] = data.temp2
	diag['voltage'] = data.voltage
	diag['current'] = data.current
	rospy.loginfo(diag)


if __name__ == '__main__':
    try:
        handle_events()
    except rospy.ROSInterruptException: pass
