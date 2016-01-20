# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(sound_play_CONFIG_INCLUDED)
  return()
endif()
set(sound_play_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("FALSE" STREQUAL "TRUE")
  set(sound_play_SOURCE_PREFIX /home/neowizard/school/komodo/komodo_speech/src/sound_play)
  set(sound_play_DEVEL_PREFIX /home/neowizard/school/komodo/komodo_speech/devel)
  set(sound_play_INSTALL_PREFIX "")
  set(sound_play_PREFIX ${sound_play_DEVEL_PREFIX})
else()
  set(sound_play_SOURCE_PREFIX "")
  set(sound_play_DEVEL_PREFIX "")
  set(sound_play_INSTALL_PREFIX /home/neowizard/school/komodo/komodo_speech/install)
  set(sound_play_PREFIX ${sound_play_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'sound_play' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(sound_play_FOUND_CATKIN_PROJECT TRUE)

if(NOT " " STREQUAL " ")
  set(sound_play_INCLUDE_DIRS "")
  set(_include_dirs "")
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${sound_play_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'sound_play' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  Ask the maintainer 'neowizard <neowizard@todo.todo>' to fix it.")
      endif()
    else()
      message(FATAL_ERROR "Project 'sound_play' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/neowizard/school/komodo/komodo_speech/install/${idir}'.  Ask the maintainer 'neowizard <neowizard@todo.todo>' to fix it.")
    endif()
    _list_append_unique(sound_play_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND sound_play_LIBRARIES ${library})
  elseif(TARGET ${library})
    list(APPEND sound_play_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND sound_play_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/neowizard/school/komodo/komodo_speech/install/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/visualization_marker_tutorials/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/urdf_tutorial/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rviz_python_tutorial/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rviz_plugin_tutorials/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_rviz/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/librviz_tutorial/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rviz/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/robot_state_publisher/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/kdl_parser/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/collada_urdf/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/urdf/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/turtle_tf2/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/turtle_tf/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/turtle_actionlib/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/turtlesim/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/tf_conversions/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/tf2_kdl/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/laser_geometry/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/interactive_marker_tutorials/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/interactive_markers/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/tf/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/tf2_ros/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/sound_play/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_launch/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/nodelet_topic_tools/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/diagnostic_analysis/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/actionlib_tutorials/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/actionlib/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rosbag/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/topic_tools/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/tf2_py/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/smach_ros/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/self_test/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_image_view/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_gui_py/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_gui_cpp/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/roswtf/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rostopic/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rospy_tutorials/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rosnode/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/image_transport/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/message_filters/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/filters/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/dynamic_reconfigure/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/diagnostic_common_diagnostics/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/diagnostic_updater/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/diagnostic_aggregator/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/cv_bridge/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rosout/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/roscpp_tutorials/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/pluginlib_tutorials/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/nodelet_tutorial_math/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/nodelet/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/joint_state_publisher/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/collada_parser/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/bondpy/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/bondcpp/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/audio_play/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/audio_capture/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/roscpp/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/xmlrpcpp/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/viz/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/visualization_tutorials/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/geometric_shapes/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/visualization_msgs/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/urdf_parser_plugin/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/control_msgs/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/trajectory_msgs/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/tf2/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/tf2_msgs/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/stereo_msgs/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/std_srvs/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/smach_msgs/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/shape_msgs/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/map_msgs/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/image_geometry/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/sensor_msgs/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rosgraph_msgs/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/nav_msgs/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/kdl_conversions/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/eigen_conversions/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/geometry_msgs/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/diagnostic_msgs/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/bond/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/actionlib_msgs/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/std_msgs/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/smclib/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/smach/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_web/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_topic/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_top/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_tf_tree/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_srv/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_shell/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_service_caller/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_runtime_monitor/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_robot_steering/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_robot_plugins/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_robot_monitor/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_robot_dashboard/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_reconfigure/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_py_console/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_py_common/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_publisher/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_pose_view/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_plot/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_nav_view/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_msg/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_moveit/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_logger_level/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_gui/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_graph/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_dep/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_console/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_common_plugins/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_bag_plugins/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_bag/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rqt_action/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rostest/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rosbag_storage/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/roslz4/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rosconsole_bridge/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/resource_retriever/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/qt_gui_cpp/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/pluginlib/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rosconsole/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rosunit/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/roslaunch/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/python_qt_binding/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/roscpp_serialization/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rostime/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rosservice/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rospy/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rosparam/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/roslib/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rospack/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rosmsg/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rosmaster/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rosmake/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/roslisp/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/roslint/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/roslang/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rosgraph/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/roscreate/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/roscpp_traits/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/roscpp_core/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rosclean/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rosbuild/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rosboost_cfg/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rosbash/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/rosbag_migration_rule/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/ros_tutorials/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/ros_core/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/ros_comm/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/ros_base/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/ros/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/robot_model/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/robot/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/random_numbers/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/qt_gui_py_common/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/qt_gui/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/qt_dotgraph/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/pr2_description/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/nodelet_core/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/mk/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/message_runtime/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/audio_common_msgs/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/message_generation/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/media_export/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/ivcon/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/geometry_tutorials/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/geometry/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/executive_smach/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/eigen_stl_containers/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/diagnostics/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/desktop/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/cpp_common/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/convex_decomposition/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/common_tutorials/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/common_msgs/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/class_loader/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/cmake_modules/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/bond_core/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/audio_common/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/angles/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/genpy/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/genlisp/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/gencpp/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/genmsg/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/catkin/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/devel_isolated/xacro/lib;/home/neowizard/school/komodo/ros_deb_catkin_ws/install_isolated/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(sound_play_LIBRARY_DIRS ${lib_path})
      list(APPEND sound_play_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'sound_play'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND sound_play_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(sound_play_EXPORTED_TARGETS "")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${sound_play_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 sound_play_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${sound_play_dep}_FOUND)
      find_package(${sound_play_dep} REQUIRED)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${sound_play_dep} REQUIRED ${depend_list})
  endif()
  _list_append_unique(sound_play_INCLUDE_DIRS ${${sound_play_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(sound_play_LIBRARIES ${sound_play_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${sound_play_dep}_LIBRARIES})
  _list_append_deduplicate(sound_play_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(sound_play_LIBRARIES ${sound_play_LIBRARIES})

  _list_append_unique(sound_play_LIBRARY_DIRS ${${sound_play_dep}_LIBRARY_DIRS})
  list(APPEND sound_play_EXPORTED_TARGETS ${${sound_play_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${sound_play_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
