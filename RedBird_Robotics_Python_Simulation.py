from random import randint
import threading
import time
import numpy

class Ground_Robots(object):
    iteration = 0.0167
    
    def __init__(self, x, y):
        self.x = x
        self.y = y
        self.timer = threading.Event()
        radii = 1

    def intitiating(self):

        self.timer.clear()

        try:
            self.trajectory_thread = threading.Thread(target = self.trajectory, args = ())

            self.trajectory_thread.start()

            print("Thread has started!")

        except:
            print("Could not start thread")


    def intitiating(self):

        self.timer.clear()

        try:
            self.trajectory_thread = threading.Thread(target = self.trajectory, args = ())

            self.trajectory_thread.start()

            print("Thread has started!")

        except:
            print("Could not start thread")

    def reintitiating(self, newX, newY):

        self.x = newX
        self.y = newY

        self.timer.clear()

        try:
            self.trajectory_thread = threading.Thread(target = self.trajectory, args = ())

            self.trajectory_thread.start()

            print("Thread has started!")

        except:
            print("Could not start thread")

    def trajectory(self):
        self.timer_begin = time.time()

        self.deltaX = randint(-100, 100) / 100
        self.deltaX = round(self.deltaX, 2)

        self.distanceTraveledX = self.deltaX + self.x

        self.deltaY = ((1**2) - ((self.deltaX)**2))**0.5
        self.detlaY = round(self.deltaY, 2)

        self.distanceTraveledY = self.deltaY + self.y

        print(self.deltaX)
        print(self.deltaY)

        while not self.timer.is_set():
            self.distanceTraveledX += self.deltaX
            self.distanceTraveledY += self.deltaY

            self.distanceTraveledX = round(self.distanceTraveledX, 2)
            self.distanceTraveledY = round(self.distanceTraveledY, 2)

            print("(" + str(self.distanceTraveledX) + ", " + str(self.distanceTraveledY) + ")")

            self.timer_end = round((time.time() - self.timer_begin),2)

            print("Time elapsed is: " + str(self.timer_end))

            if(self.timer_end >= 5):
                self.timer.set()

    def terminate(self):     
        if(self.timer_end == 5):
            print("Setting the timer flag")
            timer.set()          

    def mega_terminate(self):
        self.timer.set()


arduino_1 = Ground_Robots(7,8)
arduino_2 = Ground_Robots(-7,-8)
arduino_3 = Ground_Robots(-7,8)
arduino_4 = Ground_Robots(7,-8)

ground_robots = []
ground_robots.append(arduino_1)
ground_robots.append(arduino_2)
ground_robots.append(arduino_3)
ground_robots.append(arduino_4)

timer_begin = time.time()

sim_timer = 0

for robot in ground_robots:
    robot.intitiating()

while sim_timer < 20:
    
    for robot in ground_robots:

        robot.terminate()

        print("testing the thread is alive")

        if (robot.trajectory_thread.is_alive() == False):
            print("tested and reinitiating the thread")

            robot.reintitiating(robot.distanceTraveledX, robot.distanceTraveledY)


    for i in range(1,3):
        if(ground_robots[0].distanceTraveledX == ground_robots[i].distanceTraveledX):
            if(ground_robots[0].distanceTraveledY == ground_robots[i].distanceTraveledY):
                ground_robots[i].mega_terminate()
                ground_robots[0].mega_terminate()
                    

    for i in range(2,3):
        if(ground_robots[1].distanceTraveledX == ground_robots[i].distanceTraveledX):
            if(ground_robots[1].distanceTraveledY == ground_robots[i].distanceTraveledY):
                ground_robots[i].mega_terminate()
                ground_robots[1].mega_terminate()
                    

    if(ground_robots[2].distanceTraveledX == ground_robots[3].distanceTraveledX):
        if(ground_robots[2].distanceTraveledY == ground_robots[3].distanceTraveledY):
            ground_robots[2].mega_terminate()
            ground_robots[3].mega_terminate()

    sim_timer = time.time() - timer_begin
                    

    #for i in range(1, 3):
        #x1 = ground_robots[0].distanceTraveledX
        #x2 = ground_robots[i].distanceTraveledX

        #y1 = ground_robots[0].distanceTraveledY
        #y2 = ground_robots[i].distanceTraveledY

