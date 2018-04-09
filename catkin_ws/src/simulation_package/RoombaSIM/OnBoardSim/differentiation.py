import util
from ROSExtension import ROSExtension
import rospy
import logging
from beginner_tutorials.msg import Num
from drone_loc import DroneLoc

class Differentiate_Roombas(object):
	
	def __init__(self):
		
		self.active_roombas = []
		
		self.non_active_roombas = []
		
		self.ros = ROSExtension()
		
		self.ros.init_ros_node('Differentiation_Simulation')

        self.ros.create_listener('localization_node', self.callback_for_localization, localization)
		
		self.logger = logging.basicConfig(filename='on_board_sim.log', level=logging.DEBUG)
		
		self.ros.create_publisher(self, 'Target_Roomba', Num)
		
		self.msg_for_sim = Num()

		self.droneLoc = DroneLoc()
		
		self.drone_coors = None

		
	def differentate_roombas(self, input_roombas, active_roombas):
		
		curr_count = 0
		
		index_to_remove = 0
		
		if len(active_roombas) > 0:
		
			logging.debug('There were roombas')
		
			for i in range(0, input_roombas):

				i_roomba = input_roomba[j]

				for j in range(0, active_roombas):

					a_roomba = active_roombas[i]

					if a_roomba.pos[0] - i_roomba.pos[0] < 0.01 and a_roomba.pos[1] - i_roomba.pos[1] < 0.01:

						curr_count++
						
						logging.debug('We already found that one! We have found: %s' % str(curr_count))
						
						if(curr_count + (len(active_roomba) - 1) > input_roombas):
							
							logging.warning('Something went wrong, there are too many seen roombas')
						
						a_roomba.pos = i_roomba.pos

						self.active_roomba.append(a_roomba)

						del a_roomba[i]
						
			if len(active_roombas) >= 1:

				self.non_active_roombas = active_roombas
				
				logging.debug(" We have no more active roombas, this means that we SHOULD be calling populat_ros_msg() ")
						
		else:
			
			logging.debug('No roombas')
			
			self.active_roombas = input_roombas
			
		if len(self.non_active_roombas) > 0:
			
			self.populate_ros_msg()
					
	def callback_for_localization(self, seen_roomba):
		
		self.differentate_roombas(seen_roombas, self.active_roombas)
		
	def loop_till_ros_ends(self):
		
		rospy.spin()
		
	def populate_ros_msg(self):
		
		logging.debug( "Good, we got called! This means that the contents for non_active_roombas will be sent to the other sim! " )
		
		for robot in self.non_active_roombas:
			
			self.drone_coors = self.droneLoc.get_coors()
			
			self.msg_for_sim.x, self.msg_for_sim.y = roomba.x + self.drone_coors[0], roomba.y + self.drone_coors[1]
			
			self.msg_for_sim.id = roomba.id
			
			self.ros.send_message(self.msg_for_sim)
		
if __name__ == '__main__':
	
	Diff = Differentiate_Roombas()
	
	rospy.spin()
