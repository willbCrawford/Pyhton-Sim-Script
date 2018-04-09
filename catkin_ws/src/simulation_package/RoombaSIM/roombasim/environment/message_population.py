#!/usr/bin/env pyhton
import rospy
from beginner_tutorials.msg import Num

class ROSExtension(object):
    '''
    Any message population and publishing will need to be 
    called every iteration as this will be used to communicate
    with ROS. Adding this to the environment file will be fine.

    In its current state, this is an all purpose class, one instance
    for a simulation is needed. Every time you pass an instance of a drone
    or roomba to the msg, you will populate a blank message and 
    then publish it.

    Acts as a mediator between the simulation and ROS.
    '''

    def __init__(self, node_name):
        # Create map listener
        self.target_roomba_ros = None

        self.obstacle_roomba_ros = None

        self.msg = Num()

        #initialize node
        rospy.init_node(node_name, anonymous=True)
        
    def create_target_roomba_publisher(self):
        self.target_roomba_ros = rospy.Publisher('Target_Roomba', Num, queue_size=100000000)

    def create_obstacle_roomba_publisher(self):
        self.obstacle_roomba_ros = rospy.Publisher('Obstacle_Roomba', Num, queue_size=100000000)

    def populate_publish_tr_msg(self, pos, tag):

        self.msg.x, self.msg.y = pos

        self.msg.id = tag

        if not rospy.is_shutdown():

            self.target_roomba_ros.publish(self.msg)

    def populate_publish_or_msg(self, roomba):

        self.msg.x, self.msg.y = roomba.pos

        self.msg.id = roomba.tag

        if not rospy.is_shutdown():

            self.obstacle_roomba_ros.publish(self.msg)
