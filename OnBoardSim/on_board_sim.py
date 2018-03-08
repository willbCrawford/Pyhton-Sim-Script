from OnBoardSim import roomba, ROSExtension
import util

class On_Board_Sim(object):
    def __init__(self):
        self.list_of_active_roombas = []

        self.ros = ROSExtension()

        self.ros.create_listener(self.listener_for_roombas, ros_msg_type)

    def listener_for_roombas(self, ros_msg):
        roomba = roomba()

        roomba.pos = ros_msg.x, ros_msg.y

        roomba.id = ros_msg.id

        self.update_active_roombas(roomba)

    def update_active_roombas(self, roomba):
        for target in self.list_of_active_roombas:
            if util.circle_intersects_circle(target.pos, roomba.pos, roomba.max_radius):
                self.collided(roomba, target)

        if(util.circle_intersects_goal(roomba.pos, roomba.max_radius)):
            roomba.exceeds_boundary['goal_line'] = True

        if(util.circle_intersects_rboundary(roomba.pos, roomba.max_radius)):
            roomba.exceeds_boundary['right_boundary'] = True

        if(util.circle_intersects_bboundary(roomba.pos, roomba.max_radius)):
            roomba.exceeds_boundary['bottom_boundary'] = True

        if(util.circle_intersects_lboundary(roomba.pos, roomba.max_radius)):
            roomba.exceeds_boundary['left_boundary'] = True

        self.list_of_active_roombas.append(roomba)

    def collided(self, roomba_a, roomba_b):
        roomba_a.ids_of_collision.append(roomba_b.id)

        roomba_b.ids_of_collision.append(roomba_a.id)