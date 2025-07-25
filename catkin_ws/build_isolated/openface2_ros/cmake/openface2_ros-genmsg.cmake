# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "openface2_ros: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iopenface2_ros:/home/learnlab/catkin_ws/src/openface2_ros/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(openface2_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/learnlab/catkin_ws/src/openface2_ros/msg/ActionUnit.msg" NAME_WE)
add_custom_target(_openface2_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "openface2_ros" "/home/learnlab/catkin_ws/src/openface2_ros/msg/ActionUnit.msg" ""
)

get_filename_component(_filename "/home/learnlab/catkin_ws/src/openface2_ros/msg/Face.msg" NAME_WE)
add_custom_target(_openface2_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "openface2_ros" "/home/learnlab/catkin_ws/src/openface2_ros/msg/Face.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header"
)

get_filename_component(_filename "/home/learnlab/catkin_ws/src/openface2_ros/msg/Faces.msg" NAME_WE)
add_custom_target(_openface2_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "openface2_ros" "/home/learnlab/catkin_ws/src/openface2_ros/msg/Faces.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:openface2_ros/Face:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(openface2_ros
  "/home/learnlab/catkin_ws/src/openface2_ros/msg/ActionUnit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/openface2_ros
)
_generate_msg_cpp(openface2_ros
  "/home/learnlab/catkin_ws/src/openface2_ros/msg/Face.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/openface2_ros
)
_generate_msg_cpp(openface2_ros
  "/home/learnlab/catkin_ws/src/openface2_ros/msg/Faces.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/learnlab/catkin_ws/src/openface2_ros/msg/Face.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/openface2_ros
)

### Generating Services

### Generating Module File
_generate_module_cpp(openface2_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/openface2_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(openface2_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(openface2_ros_generate_messages openface2_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/learnlab/catkin_ws/src/openface2_ros/msg/ActionUnit.msg" NAME_WE)
add_dependencies(openface2_ros_generate_messages_cpp _openface2_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/learnlab/catkin_ws/src/openface2_ros/msg/Face.msg" NAME_WE)
add_dependencies(openface2_ros_generate_messages_cpp _openface2_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/learnlab/catkin_ws/src/openface2_ros/msg/Faces.msg" NAME_WE)
add_dependencies(openface2_ros_generate_messages_cpp _openface2_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(openface2_ros_gencpp)
add_dependencies(openface2_ros_gencpp openface2_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS openface2_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(openface2_ros
  "/home/learnlab/catkin_ws/src/openface2_ros/msg/ActionUnit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/openface2_ros
)
_generate_msg_eus(openface2_ros
  "/home/learnlab/catkin_ws/src/openface2_ros/msg/Face.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/openface2_ros
)
_generate_msg_eus(openface2_ros
  "/home/learnlab/catkin_ws/src/openface2_ros/msg/Faces.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/learnlab/catkin_ws/src/openface2_ros/msg/Face.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/openface2_ros
)

### Generating Services

### Generating Module File
_generate_module_eus(openface2_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/openface2_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(openface2_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(openface2_ros_generate_messages openface2_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/learnlab/catkin_ws/src/openface2_ros/msg/ActionUnit.msg" NAME_WE)
add_dependencies(openface2_ros_generate_messages_eus _openface2_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/learnlab/catkin_ws/src/openface2_ros/msg/Face.msg" NAME_WE)
add_dependencies(openface2_ros_generate_messages_eus _openface2_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/learnlab/catkin_ws/src/openface2_ros/msg/Faces.msg" NAME_WE)
add_dependencies(openface2_ros_generate_messages_eus _openface2_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(openface2_ros_geneus)
add_dependencies(openface2_ros_geneus openface2_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS openface2_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(openface2_ros
  "/home/learnlab/catkin_ws/src/openface2_ros/msg/ActionUnit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/openface2_ros
)
_generate_msg_lisp(openface2_ros
  "/home/learnlab/catkin_ws/src/openface2_ros/msg/Face.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/openface2_ros
)
_generate_msg_lisp(openface2_ros
  "/home/learnlab/catkin_ws/src/openface2_ros/msg/Faces.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/learnlab/catkin_ws/src/openface2_ros/msg/Face.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/openface2_ros
)

### Generating Services

### Generating Module File
_generate_module_lisp(openface2_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/openface2_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(openface2_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(openface2_ros_generate_messages openface2_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/learnlab/catkin_ws/src/openface2_ros/msg/ActionUnit.msg" NAME_WE)
add_dependencies(openface2_ros_generate_messages_lisp _openface2_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/learnlab/catkin_ws/src/openface2_ros/msg/Face.msg" NAME_WE)
add_dependencies(openface2_ros_generate_messages_lisp _openface2_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/learnlab/catkin_ws/src/openface2_ros/msg/Faces.msg" NAME_WE)
add_dependencies(openface2_ros_generate_messages_lisp _openface2_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(openface2_ros_genlisp)
add_dependencies(openface2_ros_genlisp openface2_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS openface2_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(openface2_ros
  "/home/learnlab/catkin_ws/src/openface2_ros/msg/ActionUnit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/openface2_ros
)
_generate_msg_nodejs(openface2_ros
  "/home/learnlab/catkin_ws/src/openface2_ros/msg/Face.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/openface2_ros
)
_generate_msg_nodejs(openface2_ros
  "/home/learnlab/catkin_ws/src/openface2_ros/msg/Faces.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/learnlab/catkin_ws/src/openface2_ros/msg/Face.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/openface2_ros
)

### Generating Services

### Generating Module File
_generate_module_nodejs(openface2_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/openface2_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(openface2_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(openface2_ros_generate_messages openface2_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/learnlab/catkin_ws/src/openface2_ros/msg/ActionUnit.msg" NAME_WE)
add_dependencies(openface2_ros_generate_messages_nodejs _openface2_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/learnlab/catkin_ws/src/openface2_ros/msg/Face.msg" NAME_WE)
add_dependencies(openface2_ros_generate_messages_nodejs _openface2_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/learnlab/catkin_ws/src/openface2_ros/msg/Faces.msg" NAME_WE)
add_dependencies(openface2_ros_generate_messages_nodejs _openface2_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(openface2_ros_gennodejs)
add_dependencies(openface2_ros_gennodejs openface2_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS openface2_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(openface2_ros
  "/home/learnlab/catkin_ws/src/openface2_ros/msg/ActionUnit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/openface2_ros
)
_generate_msg_py(openface2_ros
  "/home/learnlab/catkin_ws/src/openface2_ros/msg/Face.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/openface2_ros
)
_generate_msg_py(openface2_ros
  "/home/learnlab/catkin_ws/src/openface2_ros/msg/Faces.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/learnlab/catkin_ws/src/openface2_ros/msg/Face.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/openface2_ros
)

### Generating Services

### Generating Module File
_generate_module_py(openface2_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/openface2_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(openface2_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(openface2_ros_generate_messages openface2_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/learnlab/catkin_ws/src/openface2_ros/msg/ActionUnit.msg" NAME_WE)
add_dependencies(openface2_ros_generate_messages_py _openface2_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/learnlab/catkin_ws/src/openface2_ros/msg/Face.msg" NAME_WE)
add_dependencies(openface2_ros_generate_messages_py _openface2_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/learnlab/catkin_ws/src/openface2_ros/msg/Faces.msg" NAME_WE)
add_dependencies(openface2_ros_generate_messages_py _openface2_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(openface2_ros_genpy)
add_dependencies(openface2_ros_genpy openface2_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS openface2_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/openface2_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/openface2_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(openface2_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(openface2_ros_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/openface2_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/openface2_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(openface2_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(openface2_ros_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/openface2_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/openface2_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(openface2_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(openface2_ros_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/openface2_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/openface2_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(openface2_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(openface2_ros_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/openface2_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/openface2_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/openface2_ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(openface2_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(openface2_ros_generate_messages_py geometry_msgs_generate_messages_py)
endif()
