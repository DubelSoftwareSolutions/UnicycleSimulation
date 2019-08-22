# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ode_unicycle: 3 messages, 1 services")

set(MSG_I_FLAGS "-Iode_unicycle:/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ode_unicycle_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/ControlSignal.msg" NAME_WE)
add_custom_target(_ode_unicycle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ode_unicycle" "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/ControlSignal.msg" ""
)

get_filename_component(_filename "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/TimeSignal.msg" NAME_WE)
add_custom_target(_ode_unicycle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ode_unicycle" "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/TimeSignal.msg" ""
)

get_filename_component(_filename "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/srv/SetInitialState.srv" NAME_WE)
add_custom_target(_ode_unicycle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ode_unicycle" "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/srv/SetInitialState.srv" ""
)

get_filename_component(_filename "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/StateSignal.msg" NAME_WE)
add_custom_target(_ode_unicycle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ode_unicycle" "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/StateSignal.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ode_unicycle
  "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/ControlSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ode_unicycle
)
_generate_msg_cpp(ode_unicycle
  "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/TimeSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ode_unicycle
)
_generate_msg_cpp(ode_unicycle
  "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/StateSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ode_unicycle
)

### Generating Services
_generate_srv_cpp(ode_unicycle
  "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/srv/SetInitialState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ode_unicycle
)

### Generating Module File
_generate_module_cpp(ode_unicycle
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ode_unicycle
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ode_unicycle_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ode_unicycle_generate_messages ode_unicycle_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/ControlSignal.msg" NAME_WE)
add_dependencies(ode_unicycle_generate_messages_cpp _ode_unicycle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/TimeSignal.msg" NAME_WE)
add_dependencies(ode_unicycle_generate_messages_cpp _ode_unicycle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/srv/SetInitialState.srv" NAME_WE)
add_dependencies(ode_unicycle_generate_messages_cpp _ode_unicycle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/StateSignal.msg" NAME_WE)
add_dependencies(ode_unicycle_generate_messages_cpp _ode_unicycle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ode_unicycle_gencpp)
add_dependencies(ode_unicycle_gencpp ode_unicycle_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ode_unicycle_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ode_unicycle
  "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/ControlSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ode_unicycle
)
_generate_msg_eus(ode_unicycle
  "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/TimeSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ode_unicycle
)
_generate_msg_eus(ode_unicycle
  "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/StateSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ode_unicycle
)

### Generating Services
_generate_srv_eus(ode_unicycle
  "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/srv/SetInitialState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ode_unicycle
)

### Generating Module File
_generate_module_eus(ode_unicycle
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ode_unicycle
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ode_unicycle_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ode_unicycle_generate_messages ode_unicycle_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/ControlSignal.msg" NAME_WE)
add_dependencies(ode_unicycle_generate_messages_eus _ode_unicycle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/TimeSignal.msg" NAME_WE)
add_dependencies(ode_unicycle_generate_messages_eus _ode_unicycle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/srv/SetInitialState.srv" NAME_WE)
add_dependencies(ode_unicycle_generate_messages_eus _ode_unicycle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/StateSignal.msg" NAME_WE)
add_dependencies(ode_unicycle_generate_messages_eus _ode_unicycle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ode_unicycle_geneus)
add_dependencies(ode_unicycle_geneus ode_unicycle_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ode_unicycle_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ode_unicycle
  "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/ControlSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ode_unicycle
)
_generate_msg_lisp(ode_unicycle
  "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/TimeSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ode_unicycle
)
_generate_msg_lisp(ode_unicycle
  "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/StateSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ode_unicycle
)

### Generating Services
_generate_srv_lisp(ode_unicycle
  "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/srv/SetInitialState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ode_unicycle
)

### Generating Module File
_generate_module_lisp(ode_unicycle
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ode_unicycle
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ode_unicycle_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ode_unicycle_generate_messages ode_unicycle_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/ControlSignal.msg" NAME_WE)
add_dependencies(ode_unicycle_generate_messages_lisp _ode_unicycle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/TimeSignal.msg" NAME_WE)
add_dependencies(ode_unicycle_generate_messages_lisp _ode_unicycle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/srv/SetInitialState.srv" NAME_WE)
add_dependencies(ode_unicycle_generate_messages_lisp _ode_unicycle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/StateSignal.msg" NAME_WE)
add_dependencies(ode_unicycle_generate_messages_lisp _ode_unicycle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ode_unicycle_genlisp)
add_dependencies(ode_unicycle_genlisp ode_unicycle_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ode_unicycle_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ode_unicycle
  "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/ControlSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ode_unicycle
)
_generate_msg_nodejs(ode_unicycle
  "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/TimeSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ode_unicycle
)
_generate_msg_nodejs(ode_unicycle
  "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/StateSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ode_unicycle
)

### Generating Services
_generate_srv_nodejs(ode_unicycle
  "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/srv/SetInitialState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ode_unicycle
)

### Generating Module File
_generate_module_nodejs(ode_unicycle
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ode_unicycle
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ode_unicycle_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ode_unicycle_generate_messages ode_unicycle_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/ControlSignal.msg" NAME_WE)
add_dependencies(ode_unicycle_generate_messages_nodejs _ode_unicycle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/TimeSignal.msg" NAME_WE)
add_dependencies(ode_unicycle_generate_messages_nodejs _ode_unicycle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/srv/SetInitialState.srv" NAME_WE)
add_dependencies(ode_unicycle_generate_messages_nodejs _ode_unicycle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/StateSignal.msg" NAME_WE)
add_dependencies(ode_unicycle_generate_messages_nodejs _ode_unicycle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ode_unicycle_gennodejs)
add_dependencies(ode_unicycle_gennodejs ode_unicycle_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ode_unicycle_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ode_unicycle
  "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/ControlSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ode_unicycle
)
_generate_msg_py(ode_unicycle
  "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/TimeSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ode_unicycle
)
_generate_msg_py(ode_unicycle
  "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/StateSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ode_unicycle
)

### Generating Services
_generate_srv_py(ode_unicycle
  "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/srv/SetInitialState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ode_unicycle
)

### Generating Module File
_generate_module_py(ode_unicycle
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ode_unicycle
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ode_unicycle_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ode_unicycle_generate_messages ode_unicycle_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/ControlSignal.msg" NAME_WE)
add_dependencies(ode_unicycle_generate_messages_py _ode_unicycle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/TimeSignal.msg" NAME_WE)
add_dependencies(ode_unicycle_generate_messages_py _ode_unicycle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/srv/SetInitialState.srv" NAME_WE)
add_dependencies(ode_unicycle_generate_messages_py _ode_unicycle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/mnt/student/218549/RosWorkspace4/src/ode_unicycle/msg/StateSignal.msg" NAME_WE)
add_dependencies(ode_unicycle_generate_messages_py _ode_unicycle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ode_unicycle_genpy)
add_dependencies(ode_unicycle_genpy ode_unicycle_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ode_unicycle_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ode_unicycle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ode_unicycle
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ode_unicycle_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ode_unicycle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ode_unicycle
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ode_unicycle_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ode_unicycle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ode_unicycle
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ode_unicycle_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ode_unicycle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ode_unicycle
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ode_unicycle_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ode_unicycle)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ode_unicycle\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ode_unicycle
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ode_unicycle_generate_messages_py std_msgs_generate_messages_py)
endif()
