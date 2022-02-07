# Install script for directory: /home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-2/catkin_ws/src/sensor_stick

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-2/catkin_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/sensor_stick" TYPE FILE FILES "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-2/catkin_ws/devel/include/sensor_stick/PclConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/sensor_stick" TYPE FILE FILES "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-2/catkin_ws/devel/lib/python3/dist-packages/sensor_stick/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-2/catkin_ws/devel/lib/python3/dist-packages/sensor_stick/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/sensor_stick" TYPE DIRECTORY FILES "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-2/catkin_ws/devel/lib/python3/dist-packages/sensor_stick/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-2/catkin_ws/build/sensor_stick/catkin_generated/installspace/sensor_stick.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_stick/cmake" TYPE FILE FILES
    "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-2/catkin_ws/build/sensor_stick/catkin_generated/installspace/sensor_stickConfig.cmake"
    "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-2/catkin_ws/build/sensor_stick/catkin_generated/installspace/sensor_stickConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_stick" TYPE FILE FILES "/home/nehalnevle/projects/PCL/RoboND-Perception-Exercises/Exercise-2/catkin_ws/src/sensor_stick/package.xml")
endif()

