from ROSExtension import ROSExtension
import rospy

class DroneLoc(object):
	"""docstring for DroneLoc"""
	def __init__(self):

		self.ros = ROSExtension()
		
		self.ros.init_ros_node('DroneLoc_Simulation')

        self.ros.create_listener('/mavros/local_position/pose', PoseStamped, self.local_position_callback)

		self.quadX = None
		self.quadY = None

	def populate_drone_info(self, msg)
        self.quadX = msg.pose.position.x
		self.quadY = msg.pose.position.y

	def get_coors():

		return self.quadX, self.quadY

if __name__ == '__main__':
	
	droneLoc = DroneLoc()
	
	rospy.spin()