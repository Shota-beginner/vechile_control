# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "ecl_build;ecl_devices;ecl_geometry;ecl_sigslots;ecl_time;nodelet;pluginlib;roscpp;rospy;sensor_msgs;std_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lwit_nodelet".split(';') if "-lwit_nodelet" != "" else []
PROJECT_NAME = "wit_node"
PROJECT_SPACE_DIR = "/home/shota/catkin_ws/install"
PROJECT_VERSION = "0.0.0"
