# Install script for directory: /home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/build/sensor_stick/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_stick/msg" TYPE FILE FILES
    "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObject.msg"
    "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/msg/DetectedObjectsArray.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_stick/srv" TYPE FILE FILES
    "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetNormals.srv"
    "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/srv/GetFloatArrayFeature.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_stick/cmake" TYPE FILE FILES "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/build/sensor_stick/catkin_generated/installspace/sensor_stick-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/devel/include/sensor_stick")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/devel/share/roseus/ros/sensor_stick")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/devel/share/common-lisp/ros/sensor_stick")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/devel/share/gennodejs/ros/sensor_stick")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/devel/lib/python3/dist-packages/sensor_stick")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/devel/lib/python3/dist-packages/sensor_stick" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/devel/lib/python3/dist-packages/sensor_stick" FILES_MATCHING REGEX "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/devel/lib/python3/dist-packages/sensor_stick/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/sensor_stick" TYPE FILE FILES "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/devel/include/sensor_stick/PclConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/devel/lib/python3/dist-packages/sensor_stick/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/sensor_stick" TYPE DIRECTORY FILES "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/devel/lib/python3/dist-packages/sensor_stick/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/build/sensor_stick/catkin_generated/installspace/sensor_stick.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_stick/cmake" TYPE FILE FILES "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/build/sensor_stick/catkin_generated/installspace/sensor_stick-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_stick/cmake" TYPE FILE FILES
    "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/build/sensor_stick/catkin_generated/installspace/sensor_stickConfig.cmake"
    "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/build/sensor_stick/catkin_generated/installspace/sensor_stickConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_stick" TYPE FILE FILES "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-3/catkin_ws/src/sensor_stick/package.xml")
endif()

