import rospy

class ROSExtension(object):
    def __init__(self):
        self._pub = None
        self._listen = None

    @staticmethod
    def init_ros_node_for_publishing():

        '''
        Method to create a ros node as a publisher. This is a one call-only method. 
        Upon calling a node will be created and then that is all that needs to be done.
        '''

        rospy.init_node('talker', anonymous=True)

    @staticmethod
    def init_ros_node_for_listening():

        '''
        Method to create a ros node as a listener. This is a one call-only method. 
        Upon calling a node will be created and then that is all that needs to be done.
        '''

        rospy.init_node('listener', anonymous=True)

    def create_listener(self, callback_method, ros_msg_type):
        rospy.Subscriber("chatter", ros_msg_type, callback_method)

    def create_publisher(self, ros_msg_type):
        self._pub = rospy.Publisher('chatter', ros_msg_type, queue_size=10)

    def send_msg(self, data):
        self._pub.publish(data)