
(cl:in-package :asdf)

(defsystem "simulation_package-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Num" :depends-on ("_package_Num"))
    (:file "_package_Num" :depends-on ("_package"))
    (:file "Sim" :depends-on ("_package_Sim"))
    (:file "_package_Sim" :depends-on ("_package"))
    (:file "obstacle_roomba" :depends-on ("_package_obstacle_roomba"))
    (:file "_package_obstacle_roomba" :depends-on ("_package"))
    (:file "target_roomba" :depends-on ("_package_target_roomba"))
    (:file "_package_target_roomba" :depends-on ("_package"))
  ))