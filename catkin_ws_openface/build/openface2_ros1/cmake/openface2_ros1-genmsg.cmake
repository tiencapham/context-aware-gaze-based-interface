# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "openface2_ros1: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iopenface2_ros1:/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(openface2_ros1_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/ActionUnit.msg" NAME_WE)
add_custom_target(_openface2_ros1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "openface2_ros1" "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/ActionUnit.msg" ""
)

get_filename_component(_filename "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Face.msg" NAME_WE)
add_custom_target(_openface2_ros1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "openface2_ros1" "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Face.msg" "geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header:openface2_ros1/ActionUnit:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Faces.msg" NAME_WE)
add_custom_target(_openface2_ros1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "openface2_ros1" "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Faces.msg" "geometry_msgs/Point:geometry_msgs/Vector3:openface2_ros1/Face:geometry_msgs/Pose:std_msgs/Header:openface2_ros1/ActionUnit:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(openface2_ros1
  "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/ActionUnit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/openface2_ros1
)
_generate_msg_cpp(openface2_ros1
  "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Face.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/ActionUnit.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/openface2_ros1
)
_generate_msg_cpp(openface2_ros1
  "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Faces.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Face.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/ActionUnit.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/openface2_ros1
)

### Generating Services

### Generating Module File
_generate_module_cpp(openface2_ros1
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/openface2_ros1
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(openface2_ros1_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(openface2_ros1_generate_messages openface2_ros1_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/ActionUnit.msg" NAME_WE)
add_dependencies(openface2_ros1_generate_messages_cpp _openface2_ros1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Face.msg" NAME_WE)
add_dependencies(openface2_ros1_generate_messages_cpp _openface2_ros1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Faces.msg" NAME_WE)
add_dependencies(openface2_ros1_generate_messages_cpp _openface2_ros1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(openface2_ros1_gencpp)
add_dependencies(openface2_ros1_gencpp openface2_ros1_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS openface2_ros1_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(openface2_ros1
  "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/ActionUnit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/openface2_ros1
)
_generate_msg_eus(openface2_ros1
  "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Face.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/ActionUnit.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/openface2_ros1
)
_generate_msg_eus(openface2_ros1
  "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Faces.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Face.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/ActionUnit.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/openface2_ros1
)

### Generating Services

### Generating Module File
_generate_module_eus(openface2_ros1
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/openface2_ros1
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(openface2_ros1_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(openface2_ros1_generate_messages openface2_ros1_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/ActionUnit.msg" NAME_WE)
add_dependencies(openface2_ros1_generate_messages_eus _openface2_ros1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Face.msg" NAME_WE)
add_dependencies(openface2_ros1_generate_messages_eus _openface2_ros1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Faces.msg" NAME_WE)
add_dependencies(openface2_ros1_generate_messages_eus _openface2_ros1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(openface2_ros1_geneus)
add_dependencies(openface2_ros1_geneus openface2_ros1_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS openface2_ros1_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(openface2_ros1
  "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/ActionUnit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/openface2_ros1
)
_generate_msg_lisp(openface2_ros1
  "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Face.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/ActionUnit.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/openface2_ros1
)
_generate_msg_lisp(openface2_ros1
  "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Faces.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Face.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/ActionUnit.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/openface2_ros1
)

### Generating Services

### Generating Module File
_generate_module_lisp(openface2_ros1
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/openface2_ros1
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(openface2_ros1_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(openface2_ros1_generate_messages openface2_ros1_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/ActionUnit.msg" NAME_WE)
add_dependencies(openface2_ros1_generate_messages_lisp _openface2_ros1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Face.msg" NAME_WE)
add_dependencies(openface2_ros1_generate_messages_lisp _openface2_ros1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Faces.msg" NAME_WE)
add_dependencies(openface2_ros1_generate_messages_lisp _openface2_ros1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(openface2_ros1_genlisp)
add_dependencies(openface2_ros1_genlisp openface2_ros1_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS openface2_ros1_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(openface2_ros1
  "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/ActionUnit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/openface2_ros1
)
_generate_msg_nodejs(openface2_ros1
  "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Face.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/ActionUnit.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/openface2_ros1
)
_generate_msg_nodejs(openface2_ros1
  "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Faces.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Face.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/ActionUnit.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/openface2_ros1
)

### Generating Services

### Generating Module File
_generate_module_nodejs(openface2_ros1
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/openface2_ros1
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(openface2_ros1_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(openface2_ros1_generate_messages openface2_ros1_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/ActionUnit.msg" NAME_WE)
add_dependencies(openface2_ros1_generate_messages_nodejs _openface2_ros1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Face.msg" NAME_WE)
add_dependencies(openface2_ros1_generate_messages_nodejs _openface2_ros1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Faces.msg" NAME_WE)
add_dependencies(openface2_ros1_generate_messages_nodejs _openface2_ros1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(openface2_ros1_gennodejs)
add_dependencies(openface2_ros1_gennodejs openface2_ros1_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS openface2_ros1_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(openface2_ros1
  "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/ActionUnit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/openface2_ros1
)
_generate_msg_py(openface2_ros1
  "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Face.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/ActionUnit.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/openface2_ros1
)
_generate_msg_py(openface2_ros1
  "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Faces.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Face.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/ActionUnit.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/openface2_ros1
)

### Generating Services

### Generating Module File
_generate_module_py(openface2_ros1
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/openface2_ros1
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(openface2_ros1_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(openface2_ros1_generate_messages openface2_ros1_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/ActionUnit.msg" NAME_WE)
add_dependencies(openface2_ros1_generate_messages_py _openface2_ros1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Face.msg" NAME_WE)
add_dependencies(openface2_ros1_generate_messages_py _openface2_ros1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/learnlab/catkin_ws_openface/src/openface2_ros1/msg/Faces.msg" NAME_WE)
add_dependencies(openface2_ros1_generate_messages_py _openface2_ros1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(openface2_ros1_genpy)
add_dependencies(openface2_ros1_genpy openface2_ros1_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS openface2_ros1_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/openface2_ros1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/openface2_ros1
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(openface2_ros1_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(openface2_ros1_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/openface2_ros1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/openface2_ros1
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(openface2_ros1_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(openface2_ros1_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/openface2_ros1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/openface2_ros1
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(openface2_ros1_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(openface2_ros1_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/openface2_ros1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/openface2_ros1
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(openface2_ros1_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(openface2_ros1_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/openface2_ros1)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/openface2_ros1\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/openface2_ros1
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(openface2_ros1_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(openface2_ros1_generate_messages_py geometry_msgs_generate_messages_py)
endif()
