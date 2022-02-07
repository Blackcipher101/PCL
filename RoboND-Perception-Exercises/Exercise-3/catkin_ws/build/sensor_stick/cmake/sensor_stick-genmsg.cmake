# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sensor_stick: 2 messages, 2 services")

set(MSG_I_FLAGS "-Isensor_stick:/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sensor_stick_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObject.msg" NAME_WE)
add_custom_target(_sensor_stick_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_stick" "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObject.msg" "sensor_msgs/PointField:sensor_msgs/PointCloud2:std_msgs/Header"
)

get_filename_component(_filename "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObjectsArray.msg" NAME_WE)
add_custom_target(_sensor_stick_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_stick" "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObjectsArray.msg" "sensor_msgs/PointField:sensor_msgs/PointCloud2:std_msgs/Header:sensor_stick/DetectedObject"
)

get_filename_component(_filename "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetNormals.srv" NAME_WE)
add_custom_target(_sensor_stick_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_stick" "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetNormals.srv" "sensor_msgs/PointField:sensor_msgs/PointCloud2:std_msgs/Header"
)

get_filename_component(_filename "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetFloatArrayFeature.srv" NAME_WE)
add_custom_target(_sensor_stick_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_stick" "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetFloatArrayFeature.srv" "sensor_msgs/PointField:sensor_msgs/PointCloud2:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sensor_stick
  "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_stick
)
_generate_msg_cpp(sensor_stick
  "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObjectsArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_stick
)

### Generating Services
_generate_srv_cpp(sensor_stick
  "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetNormals.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_stick
)
_generate_srv_cpp(sensor_stick
  "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetFloatArrayFeature.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_stick
)

### Generating Module File
_generate_module_cpp(sensor_stick
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_stick
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sensor_stick_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sensor_stick_generate_messages sensor_stick_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObject.msg" NAME_WE)
add_dependencies(sensor_stick_generate_messages_cpp _sensor_stick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObjectsArray.msg" NAME_WE)
add_dependencies(sensor_stick_generate_messages_cpp _sensor_stick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetNormals.srv" NAME_WE)
add_dependencies(sensor_stick_generate_messages_cpp _sensor_stick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetFloatArrayFeature.srv" NAME_WE)
add_dependencies(sensor_stick_generate_messages_cpp _sensor_stick_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_stick_gencpp)
add_dependencies(sensor_stick_gencpp sensor_stick_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_stick_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(sensor_stick
  "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_stick
)
_generate_msg_eus(sensor_stick
  "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObjectsArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_stick
)

### Generating Services
_generate_srv_eus(sensor_stick
  "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetNormals.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_stick
)
_generate_srv_eus(sensor_stick
  "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetFloatArrayFeature.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_stick
)

### Generating Module File
_generate_module_eus(sensor_stick
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_stick
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sensor_stick_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sensor_stick_generate_messages sensor_stick_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObject.msg" NAME_WE)
add_dependencies(sensor_stick_generate_messages_eus _sensor_stick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObjectsArray.msg" NAME_WE)
add_dependencies(sensor_stick_generate_messages_eus _sensor_stick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetNormals.srv" NAME_WE)
add_dependencies(sensor_stick_generate_messages_eus _sensor_stick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetFloatArrayFeature.srv" NAME_WE)
add_dependencies(sensor_stick_generate_messages_eus _sensor_stick_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_stick_geneus)
add_dependencies(sensor_stick_geneus sensor_stick_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_stick_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sensor_stick
  "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_stick
)
_generate_msg_lisp(sensor_stick
  "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObjectsArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_stick
)

### Generating Services
_generate_srv_lisp(sensor_stick
  "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetNormals.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_stick
)
_generate_srv_lisp(sensor_stick
  "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetFloatArrayFeature.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_stick
)

### Generating Module File
_generate_module_lisp(sensor_stick
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_stick
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sensor_stick_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sensor_stick_generate_messages sensor_stick_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObject.msg" NAME_WE)
add_dependencies(sensor_stick_generate_messages_lisp _sensor_stick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObjectsArray.msg" NAME_WE)
add_dependencies(sensor_stick_generate_messages_lisp _sensor_stick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetNormals.srv" NAME_WE)
add_dependencies(sensor_stick_generate_messages_lisp _sensor_stick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetFloatArrayFeature.srv" NAME_WE)
add_dependencies(sensor_stick_generate_messages_lisp _sensor_stick_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_stick_genlisp)
add_dependencies(sensor_stick_genlisp sensor_stick_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_stick_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(sensor_stick
  "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_stick
)
_generate_msg_nodejs(sensor_stick
  "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObjectsArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_stick
)

### Generating Services
_generate_srv_nodejs(sensor_stick
  "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetNormals.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_stick
)
_generate_srv_nodejs(sensor_stick
  "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetFloatArrayFeature.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_stick
)

### Generating Module File
_generate_module_nodejs(sensor_stick
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_stick
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sensor_stick_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sensor_stick_generate_messages sensor_stick_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObject.msg" NAME_WE)
add_dependencies(sensor_stick_generate_messages_nodejs _sensor_stick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObjectsArray.msg" NAME_WE)
add_dependencies(sensor_stick_generate_messages_nodejs _sensor_stick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetNormals.srv" NAME_WE)
add_dependencies(sensor_stick_generate_messages_nodejs _sensor_stick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetFloatArrayFeature.srv" NAME_WE)
add_dependencies(sensor_stick_generate_messages_nodejs _sensor_stick_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_stick_gennodejs)
add_dependencies(sensor_stick_gennodejs sensor_stick_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_stick_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sensor_stick
  "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_stick
)
_generate_msg_py(sensor_stick
  "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObjectsArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_stick
)

### Generating Services
_generate_srv_py(sensor_stick
  "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetNormals.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_stick
)
_generate_srv_py(sensor_stick
  "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetFloatArrayFeature.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_stick
)

### Generating Module File
_generate_module_py(sensor_stick
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_stick
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sensor_stick_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sensor_stick_generate_messages sensor_stick_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObject.msg" NAME_WE)
add_dependencies(sensor_stick_generate_messages_py _sensor_stick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObjectsArray.msg" NAME_WE)
add_dependencies(sensor_stick_generate_messages_py _sensor_stick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetNormals.srv" NAME_WE)
add_dependencies(sensor_stick_generate_messages_py _sensor_stick_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetFloatArrayFeature.srv" NAME_WE)
add_dependencies(sensor_stick_generate_messages_py _sensor_stick_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_stick_genpy)
add_dependencies(sensor_stick_genpy sensor_stick_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_stick_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_stick)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_stick
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sensor_stick_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(sensor_stick_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_stick)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_stick
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sensor_stick_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(sensor_stick_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_stick)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_stick
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sensor_stick_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(sensor_stick_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_stick)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_stick
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sensor_stick_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(sensor_stick_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_stick)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_stick\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_stick
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_stick
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_stick/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sensor_stick_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(sensor_stick_generate_messages_py sensor_msgs_generate_messages_py)
endif()
