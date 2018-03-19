;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Sim)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Sim (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::SIM")
  (make-package "BEGINNER_TUTORIALS::SIM"))

(in-package "ROS")
;;//! \htmlinclude Sim.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass beginner_tutorials::Sim
  :super ros::object
  :slots (_header _id _prob _x _y _gl _rb _lb _bb _time ))

(defmethod beginner_tutorials::Sim
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:prob __prob) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:gl __gl) nil)
    ((:rb __rb) nil)
    ((:lb __lb) nil)
    ((:bb __bb) nil)
    ((:time __time) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _prob (float __prob))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _gl __gl)
   (setq _rb __rb)
   (setq _lb __lb)
   (setq _bb __bb)
   (setq _time (float __time))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:prob
   (&optional __prob)
   (if __prob (setq _prob __prob)) _prob)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:gl
   (&optional __gl)
   (if __gl (setq _gl __gl)) _gl)
  (:rb
   (&optional __rb)
   (if __rb (setq _rb __rb)) _rb)
  (:lb
   (&optional __lb)
   (if __lb (setq _lb __lb)) _lb)
  (:bb
   (&optional __bb)
   (if __bb (setq _bb __bb)) _bb)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16 _id
    2
    ;; float64 _prob
    8
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; bool _gl
    1
    ;; bool _rb
    1
    ;; bool _lb
    1
    ;; bool _bb
    1
    ;; float64 _time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16 _id
       (write-word _id s)
     ;; float64 _prob
       (sys::poke _prob (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _gl
       (if _gl (write-byte -1 s) (write-byte 0 s))
     ;; bool _rb
       (if _rb (write-byte -1 s) (write-byte 0 s))
     ;; bool _lb
       (if _lb (write-byte -1 s) (write-byte 0 s))
     ;; bool _bb
       (if _bb (write-byte -1 s) (write-byte 0 s))
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _prob
     (setq _prob (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _gl
     (setq _gl (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rb
     (setq _rb (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _lb
     (setq _lb (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bb
     (setq _bb (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get beginner_tutorials::Sim :md5sum-) "bcaa2b3604268669fe424b85bea488e8")
(setf (get beginner_tutorials::Sim :datatype-) "beginner_tutorials/Sim")
(setf (get beginner_tutorials::Sim :definition-)
      "Header header
int16 id 	#ROOmba's id

float64 prob #Roomba's probability

float64 x 	#Roomba's origin x
float64 y 	#Roomba's origin y

bool gl
bool rb
bool lb
bool bb
#Above variables are for boundary detection

float64 time
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :beginner_tutorials/Sim "bcaa2b3604268669fe424b85bea488e8")


