from probability_funct import probability_funct
from ROSExtensnion import ROSExtension

# TODO: Configure message to have a boolean variable for: goal line, right, left and bottom boundaries. Int for the id of the other robot(s) collision.

class roomba(object, probability_funct):
    def __init__(self):
       probability_funct.__init__(self)

       self.pos = None

       self.header = None

       self.id = None

       self.ros = ROSExtension()

       self.ros_msg_type = None

       self.ros.create_publisher(self.ros_msg_type)

       self._probability = 100

       self._vel = 0.33 #m/s
       self._max_t = 20

       self.max_radius = 6.6 #m

       self.ids_of_collision = []

       self.exceeds_boundary = {
               'goal_line'         : False,
               'left_boundary'     : False,
               'bottom_boundary'   : False,
               'right_boundary'    : False
           }

       self._d_radius = self._vel * self._max_t

       self._radius = 0

    def generate_props(self):
       return { 'id' : self.id,
                 'pos' : self.pos
              }

    def populate_publish_roomba_msg(self):
        self.ros_msg_type.x, self.ros_msg_type.y = self.pos

        self.ros_msg_type.id = self.id

        self.ros_msg_type.gl = self.exceeds_boundary['goal_line']

        self.ros_msg_type.lb = self.exceeds_boundary['left_boundary']
        self.ros_msg_type.bb = self.exceeds_boundary['bottom_boundary']
        self.ros_msg_type.rb = self.exceeds_boundary['right_boundary']

        self._pub.publish(self.ros_msg_type)

    def func(self, delta):

        if self._max_t > 0 and self._radius <= 6.6:

            self._max_t -= delta

            self._radius += self._d_radius

            self._probability -= 5

            self.populate_publish_msg()