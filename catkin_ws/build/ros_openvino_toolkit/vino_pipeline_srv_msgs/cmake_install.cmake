# Install script for directory: /home/learnlab/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/learnlab/catkin_ws/install")
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

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vino_pipeline_srv_msgs/msg" TYPE FILE FILES
    "/home/learnlab/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/PipelineRequest.msg"
    "/home/learnlab/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipeline.msg"
    "/home/learnlab/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipelines.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vino_pipeline_srv_msgs/srv" TYPE FILE FILES "/home/learnlab/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/srv/PipelineSrv.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vino_pipeline_srv_msgs/cmake" TYPE FILE FILES "/home/learnlab/catkin_ws/build/ros_openvino_toolkit/vino_pipeline_srv_msgs/catkin_generated/installspace/vino_pipeline_srv_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/learnlab/catkin_ws/devel/include/vino_pipeline_srv_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/learnlab/catkin_ws/devel/share/roseus/ros/vino_pipeline_srv_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/learnlab/catkin_ws/devel/share/common-lisp/ros/vino_pipeline_srv_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/learnlab/catkin_ws/devel/share/gennodejs/ros/vino_pipeline_srv_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/learnlab/catkin_ws/devel/lib/python3/dist-packages/vino_pipeline_srv_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/learnlab/catkin_ws/devel/lib/python3/dist-packages/vino_pipeline_srv_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/learnlab/catkin_ws/build/ros_openvino_toolkit/vino_pipeline_srv_msgs/catkin_generated/installspace/vino_pipeline_srv_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vino_pipeline_srv_msgs/cmake" TYPE FILE FILES "/home/learnlab/catkin_ws/build/ros_openvino_toolkit/vino_pipeline_srv_msgs/catkin_generated/installspace/vino_pipeline_srv_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vino_pipeline_srv_msgs/cmake" TYPE FILE FILES
    "/home/learnlab/catkin_ws/build/ros_openvino_toolkit/vino_pipeline_srv_msgs/catkin_generated/installspace/vino_pipeline_srv_msgsConfig.cmake"
    "/home/learnlab/catkin_ws/build/ros_openvino_toolkit/vino_pipeline_srv_msgs/catkin_generated/installspace/vino_pipeline_srv_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vino_pipeline_srv_msgs" TYPE FILE FILES "/home/learnlab/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/package.xml")
endif()

