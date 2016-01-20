# Install script for directory: /home/neowizard/school/komodo/komodo_speech/src/komodo_speech

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/neowizard/school/komodo/komodo_speech/install")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/komodo_speech/msg" TYPE FILE FILES
    "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechSayCommand.msg"
    "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechSayResult.msg"
    "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechRecCommand.msg"
    "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/msg/KomodoSpeechRecResult.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/komodo_speech/srv" TYPE FILE FILES "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/srv/KomodoSpeechProcessing.srv")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/komodo_speech/cmake" TYPE FILE FILES "/home/neowizard/school/komodo/komodo_speech/build/komodo_speech/catkin_generated/installspace/komodo_speech-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/neowizard/school/komodo/komodo_speech/devel/include/komodo_speech")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/neowizard/school/komodo/komodo_speech/devel/share/common-lisp/ros/komodo_speech")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/neowizard/school/komodo/komodo_speech/devel/lib/python2.7/dist-packages/komodo_speech")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/neowizard/school/komodo/komodo_speech/devel/lib/python2.7/dist-packages/komodo_speech")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/neowizard/school/komodo/komodo_speech/build/komodo_speech/catkin_generated/installspace/komodo_speech.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/komodo_speech/cmake" TYPE FILE FILES "/home/neowizard/school/komodo/komodo_speech/build/komodo_speech/catkin_generated/installspace/komodo_speech-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/komodo_speech/cmake" TYPE FILE FILES
    "/home/neowizard/school/komodo/komodo_speech/build/komodo_speech/catkin_generated/installspace/komodo_speechConfig.cmake"
    "/home/neowizard/school/komodo/komodo_speech/build/komodo_speech/catkin_generated/installspace/komodo_speechConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/komodo_speech" TYPE FILE FILES "/home/neowizard/school/komodo/komodo_speech/src/komodo_speech/package.xml")
endif()

