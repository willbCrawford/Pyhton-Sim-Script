# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "simulation_package: 2 messages, 0 services")

set(MSG_I_FLAGS "-Isimulation_package:/home/redbird/catkin_ws/src/simulation_package/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(simulation_package_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/redbird/catkin_ws/src/simulation_package/msg/Sim.msg" NAME_WE)
add_custom_target(_simulation_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulation_package" "/home/redbird/catkin_ws/src/simulation_package/msg/Sim.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/redbird/catkin_ws/src/simulation_package/msg/Num.msg" NAME_WE)
add_custom_target(_simulation_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulation_package" "/home/redbird/catkin_ws/src/simulation_package/msg/Num.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(simulation_package
  "/home/redbird/catkin_ws/src/simulation_package/msg/Sim.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulation_package
)
_generate_msg_cpp(simulation_package
  "/home/redbird/catkin_ws/src/simulation_package/msg/Num.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulation_package
)

### Generating Services

### Generating Module File
_generate_module_cpp(simulation_package
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulation_package
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(simulation_package_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(simulation_package_generate_messages simulation_package_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/redbird/catkin_ws/src/simulation_package/msg/Sim.msg" NAME_WE)
add_dependencies(simulation_package_generate_messages_cpp _simulation_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/redbird/catkin_ws/src/simulation_package/msg/Num.msg" NAME_WE)
add_dependencies(simulation_package_generate_messages_cpp _simulation_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulation_package_gencpp)
add_dependencies(simulation_package_gencpp simulation_package_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulation_package_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(simulation_package
  "/home/redbird/catkin_ws/src/simulation_package/msg/Sim.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulation_package
)
_generate_msg_eus(simulation_package
  "/home/redbird/catkin_ws/src/simulation_package/msg/Num.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulation_package
)

### Generating Services

### Generating Module File
_generate_module_eus(simulation_package
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulation_package
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(simulation_package_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(simulation_package_generate_messages simulation_package_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/redbird/catkin_ws/src/simulation_package/msg/Sim.msg" NAME_WE)
add_dependencies(simulation_package_generate_messages_eus _simulation_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/redbird/catkin_ws/src/simulation_package/msg/Num.msg" NAME_WE)
add_dependencies(simulation_package_generate_messages_eus _simulation_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulation_package_geneus)
add_dependencies(simulation_package_geneus simulation_package_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulation_package_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(simulation_package
  "/home/redbird/catkin_ws/src/simulation_package/msg/Sim.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulation_package
)
_generate_msg_lisp(simulation_package
  "/home/redbird/catkin_ws/src/simulation_package/msg/Num.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulation_package
)

### Generating Services

### Generating Module File
_generate_module_lisp(simulation_package
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulation_package
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(simulation_package_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(simulation_package_generate_messages simulation_package_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/redbird/catkin_ws/src/simulation_package/msg/Sim.msg" NAME_WE)
add_dependencies(simulation_package_generate_messages_lisp _simulation_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/redbird/catkin_ws/src/simulation_package/msg/Num.msg" NAME_WE)
add_dependencies(simulation_package_generate_messages_lisp _simulation_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulation_package_genlisp)
add_dependencies(simulation_package_genlisp simulation_package_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulation_package_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(simulation_package
  "/home/redbird/catkin_ws/src/simulation_package/msg/Sim.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulation_package
)
_generate_msg_nodejs(simulation_package
  "/home/redbird/catkin_ws/src/simulation_package/msg/Num.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulation_package
)

### Generating Services

### Generating Module File
_generate_module_nodejs(simulation_package
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulation_package
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(simulation_package_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(simulation_package_generate_messages simulation_package_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/redbird/catkin_ws/src/simulation_package/msg/Sim.msg" NAME_WE)
add_dependencies(simulation_package_generate_messages_nodejs _simulation_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/redbird/catkin_ws/src/simulation_package/msg/Num.msg" NAME_WE)
add_dependencies(simulation_package_generate_messages_nodejs _simulation_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulation_package_gennodejs)
add_dependencies(simulation_package_gennodejs simulation_package_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulation_package_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(simulation_package
  "/home/redbird/catkin_ws/src/simulation_package/msg/Sim.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulation_package
)
_generate_msg_py(simulation_package
  "/home/redbird/catkin_ws/src/simulation_package/msg/Num.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulation_package
)

### Generating Services

### Generating Module File
_generate_module_py(simulation_package
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulation_package
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(simulation_package_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(simulation_package_generate_messages simulation_package_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/redbird/catkin_ws/src/simulation_package/msg/Sim.msg" NAME_WE)
add_dependencies(simulation_package_generate_messages_py _simulation_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/redbird/catkin_ws/src/simulation_package/msg/Num.msg" NAME_WE)
add_dependencies(simulation_package_generate_messages_py _simulation_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulation_package_genpy)
add_dependencies(simulation_package_genpy simulation_package_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulation_package_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulation_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulation_package
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(simulation_package_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulation_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulation_package
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(simulation_package_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulation_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulation_package
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(simulation_package_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulation_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulation_package
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(simulation_package_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulation_package)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulation_package\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulation_package
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(simulation_package_generate_messages_py std_msgs_generate_messages_py)
endif()
