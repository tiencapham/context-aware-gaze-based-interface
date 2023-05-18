# CMake generated Testfile for 
# Source directory: /home/learnlab/catkin_ws/src/ros_openvino_toolkit/vino_launch
# Build directory: /home/learnlab/catkin_ws/build_isolated/vino_launch
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_vino_launch_roslaunch-check_launch "/home/learnlab/catkin_ws/build_isolated/vino_launch/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/learnlab/catkin_ws/build_isolated/vino_launch/test_results/vino_launch/roslaunch-check_launch.xml" "--return-code" "/usr/local/bin/cmake -E make_directory /home/learnlab/catkin_ws/build_isolated/vino_launch/test_results/vino_launch" "/opt/ros/noetic/share/roslaunch/cmake/../scripts/roslaunch-check -o \"/home/learnlab/catkin_ws/build_isolated/vino_launch/test_results/vino_launch/roslaunch-check_launch.xml\" \"/home/learnlab/catkin_ws/src/ros_openvino_toolkit/vino_launch/launch\" ")
set_tests_properties(_ctest_vino_launch_roslaunch-check_launch PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/roslaunch/cmake/roslaunch-extras.cmake;66;catkin_run_tests_target;/home/learnlab/catkin_ws/src/ros_openvino_toolkit/vino_launch/CMakeLists.txt;46;roslaunch_add_file_check;/home/learnlab/catkin_ws/src/ros_openvino_toolkit/vino_launch/CMakeLists.txt;0;")
subdirs("gtest")
