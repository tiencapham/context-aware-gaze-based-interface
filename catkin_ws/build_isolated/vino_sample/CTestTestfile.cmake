# CMake generated Testfile for 
# Source directory: /home/learnlab/catkin_ws/src/ros_openvino_toolkit/vino_sample
# Build directory: /home/learnlab/catkin_ws/build_isolated/vino_sample
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_vino_sample_roslint_package "/home/learnlab/catkin_ws/build_isolated/vino_sample/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/learnlab/catkin_ws/build_isolated/vino_sample/test_results/vino_sample/roslint-vino_sample.xml" "--working-dir" "/home/learnlab/catkin_ws/build_isolated/vino_sample" "--return-code" "/opt/ros/noetic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/learnlab/catkin_ws/build_isolated/vino_sample/test_results/vino_sample/roslint-vino_sample.xml make roslint_vino_sample")
set_tests_properties(_ctest_vino_sample_roslint_package PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/roslint/cmake/roslint-extras.cmake;67;catkin_run_tests_target;/home/learnlab/catkin_ws/src/ros_openvino_toolkit/vino_sample/CMakeLists.txt;328;roslint_add_test;/home/learnlab/catkin_ws/src/ros_openvino_toolkit/vino_sample/CMakeLists.txt;0;")
subdirs("gtest")
