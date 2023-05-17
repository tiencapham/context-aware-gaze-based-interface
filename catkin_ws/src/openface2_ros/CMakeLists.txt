cmake_minimum_required(VERSION 2.8.3)
project(openface2_ros)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  message_runtime
  std_msgs
  geometry_msgs
  sensor_msgs
  roscpp
)


add_message_files(FILES ActionUnit.msg Face.msg Faces.msg)

generate_messages(DEPENDENCIES std_msgs geometry_msgs)

catkin_package(
  CATKIN_DEPENDS std_msgs sensor_msgs message_runtime geometry_msgs
)