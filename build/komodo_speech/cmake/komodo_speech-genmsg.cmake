# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "komodo_speech: 4 messages, 1 services")

set(MSG_I_FLAGS "-Ikomodo_speech:/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg;-Istd_msgs:/home/neowizard/school/komodo/ros_deb_catkin_ws/src/std_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(komodo_speech_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/srv/KomodoSpeechProcessing.srv" NAME_WE)
add_custom_target(_komodo_speech_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "komodo_speech" "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/srv/KomodoSpeechProcessing.srv" ""
)

get_filename_component(_filename "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechRecCommand.msg" NAME_WE)
add_custom_target(_komodo_speech_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "komodo_speech" "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechRecCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechRecResult.msg" NAME_WE)
add_custom_target(_komodo_speech_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "komodo_speech" "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechRecResult.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechSayResult.msg" NAME_WE)
add_custom_target(_komodo_speech_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "komodo_speech" "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechSayResult.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechSayCommand.msg" NAME_WE)
add_custom_target(_komodo_speech_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "komodo_speech" "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechSayCommand.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(komodo_speech
  "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechRecCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/neowizard/school/komodo/ros_deb_catkin_ws/src/std_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/komodo_speech
)
_generate_msg_cpp(komodo_speech
  "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechRecResult.msg"
  "${MSG_I_FLAGS}"
  "/home/neowizard/school/komodo/ros_deb_catkin_ws/src/std_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/komodo_speech
)
_generate_msg_cpp(komodo_speech
  "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechSayResult.msg"
  "${MSG_I_FLAGS}"
  "/home/neowizard/school/komodo/ros_deb_catkin_ws/src/std_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/komodo_speech
)
_generate_msg_cpp(komodo_speech
  "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechSayCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/neowizard/school/komodo/ros_deb_catkin_ws/src/std_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/komodo_speech
)

### Generating Services
_generate_srv_cpp(komodo_speech
  "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/srv/KomodoSpeechProcessing.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/komodo_speech
)

### Generating Module File
_generate_module_cpp(komodo_speech
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/komodo_speech
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(komodo_speech_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(komodo_speech_generate_messages komodo_speech_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/srv/KomodoSpeechProcessing.srv" NAME_WE)
add_dependencies(komodo_speech_generate_messages_cpp _komodo_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechRecCommand.msg" NAME_WE)
add_dependencies(komodo_speech_generate_messages_cpp _komodo_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechRecResult.msg" NAME_WE)
add_dependencies(komodo_speech_generate_messages_cpp _komodo_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechSayResult.msg" NAME_WE)
add_dependencies(komodo_speech_generate_messages_cpp _komodo_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechSayCommand.msg" NAME_WE)
add_dependencies(komodo_speech_generate_messages_cpp _komodo_speech_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(komodo_speech_gencpp)
add_dependencies(komodo_speech_gencpp komodo_speech_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS komodo_speech_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(komodo_speech
  "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechRecCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/neowizard/school/komodo/ros_deb_catkin_ws/src/std_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/komodo_speech
)
_generate_msg_lisp(komodo_speech
  "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechRecResult.msg"
  "${MSG_I_FLAGS}"
  "/home/neowizard/school/komodo/ros_deb_catkin_ws/src/std_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/komodo_speech
)
_generate_msg_lisp(komodo_speech
  "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechSayResult.msg"
  "${MSG_I_FLAGS}"
  "/home/neowizard/school/komodo/ros_deb_catkin_ws/src/std_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/komodo_speech
)
_generate_msg_lisp(komodo_speech
  "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechSayCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/neowizard/school/komodo/ros_deb_catkin_ws/src/std_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/komodo_speech
)

### Generating Services
_generate_srv_lisp(komodo_speech
  "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/srv/KomodoSpeechProcessing.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/komodo_speech
)

### Generating Module File
_generate_module_lisp(komodo_speech
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/komodo_speech
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(komodo_speech_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(komodo_speech_generate_messages komodo_speech_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/srv/KomodoSpeechProcessing.srv" NAME_WE)
add_dependencies(komodo_speech_generate_messages_lisp _komodo_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechRecCommand.msg" NAME_WE)
add_dependencies(komodo_speech_generate_messages_lisp _komodo_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechRecResult.msg" NAME_WE)
add_dependencies(komodo_speech_generate_messages_lisp _komodo_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechSayResult.msg" NAME_WE)
add_dependencies(komodo_speech_generate_messages_lisp _komodo_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechSayCommand.msg" NAME_WE)
add_dependencies(komodo_speech_generate_messages_lisp _komodo_speech_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(komodo_speech_genlisp)
add_dependencies(komodo_speech_genlisp komodo_speech_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS komodo_speech_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(komodo_speech
  "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechRecCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/neowizard/school/komodo/ros_deb_catkin_ws/src/std_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/komodo_speech
)
_generate_msg_py(komodo_speech
  "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechRecResult.msg"
  "${MSG_I_FLAGS}"
  "/home/neowizard/school/komodo/ros_deb_catkin_ws/src/std_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/komodo_speech
)
_generate_msg_py(komodo_speech
  "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechSayResult.msg"
  "${MSG_I_FLAGS}"
  "/home/neowizard/school/komodo/ros_deb_catkin_ws/src/std_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/komodo_speech
)
_generate_msg_py(komodo_speech
  "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechSayCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/neowizard/school/komodo/ros_deb_catkin_ws/src/std_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/komodo_speech
)

### Generating Services
_generate_srv_py(komodo_speech
  "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/srv/KomodoSpeechProcessing.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/komodo_speech
)

### Generating Module File
_generate_module_py(komodo_speech
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/komodo_speech
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(komodo_speech_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(komodo_speech_generate_messages komodo_speech_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/srv/KomodoSpeechProcessing.srv" NAME_WE)
add_dependencies(komodo_speech_generate_messages_py _komodo_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechRecCommand.msg" NAME_WE)
add_dependencies(komodo_speech_generate_messages_py _komodo_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechRecResult.msg" NAME_WE)
add_dependencies(komodo_speech_generate_messages_py _komodo_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechSayResult.msg" NAME_WE)
add_dependencies(komodo_speech_generate_messages_py _komodo_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechSayCommand.msg" NAME_WE)
add_dependencies(komodo_speech_generate_messages_py _komodo_speech_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(komodo_speech_genpy)
add_dependencies(komodo_speech_genpy komodo_speech_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS komodo_speech_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/komodo_speech)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/komodo_speech
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(komodo_speech_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/komodo_speech)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/komodo_speech
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(komodo_speech_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/komodo_speech)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/komodo_speech\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/komodo_speech
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(komodo_speech_generate_messages_py std_msgs_generate_messages_py)
