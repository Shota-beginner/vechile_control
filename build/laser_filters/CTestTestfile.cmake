# CMake generated Testfile for 
# Source directory: /home/shota/catkin_ws/src/laser_filters
# Build directory: /home/shota/catkin_ws/build/laser_filters
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_laser_filters_rostest_test_test_scan_filter_chain.launch "/home/shota/catkin_ws/build/laser_filters/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/shota/catkin_ws/build/laser_filters/test_results/laser_filters/rostest-test_test_scan_filter_chain.xml" "--return-code" "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/shota/catkin_ws/src/laser_filters --package=laser_filters --results-filename test_test_scan_filter_chain.xml --results-base-dir \"/home/shota/catkin_ws/build/laser_filters/test_results\" /home/shota/catkin_ws/src/laser_filters/test/test_scan_filter_chain.launch ")
set_tests_properties(_ctest_laser_filters_rostest_test_test_scan_filter_chain.launch PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/shota/catkin_ws/src/laser_filters/CMakeLists.txt;78;add_rostest;/home/shota/catkin_ws/src/laser_filters/CMakeLists.txt;0;")
add_test(_ctest_laser_filters_rostest_test_test_polygon_filter.launch "/home/shota/catkin_ws/build/laser_filters/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/shota/catkin_ws/build/laser_filters/test_results/laser_filters/rostest-test_test_polygon_filter.xml" "--return-code" "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/shota/catkin_ws/src/laser_filters --package=laser_filters --results-filename test_test_polygon_filter.xml --results-base-dir \"/home/shota/catkin_ws/build/laser_filters/test_results\" /home/shota/catkin_ws/src/laser_filters/test/test_polygon_filter.launch ")
set_tests_properties(_ctest_laser_filters_rostest_test_test_polygon_filter.launch PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/shota/catkin_ws/src/laser_filters/CMakeLists.txt;79;add_rostest;/home/shota/catkin_ws/src/laser_filters/CMakeLists.txt;0;")
add_test(_ctest_laser_filters_rostest_test_test_speckle_filter.launch "/home/shota/catkin_ws/build/laser_filters/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/shota/catkin_ws/build/laser_filters/test_results/laser_filters/rostest-test_test_speckle_filter.xml" "--return-code" "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/shota/catkin_ws/src/laser_filters --package=laser_filters --results-filename test_test_speckle_filter.xml --results-base-dir \"/home/shota/catkin_ws/build/laser_filters/test_results\" /home/shota/catkin_ws/src/laser_filters/test/test_speckle_filter.launch ")
set_tests_properties(_ctest_laser_filters_rostest_test_test_speckle_filter.launch PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/shota/catkin_ws/src/laser_filters/CMakeLists.txt;80;add_rostest;/home/shota/catkin_ws/src/laser_filters/CMakeLists.txt;0;")
add_test(_ctest_laser_filters_gtest_test_shadow_detector "/home/shota/catkin_ws/build/laser_filters/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/shota/catkin_ws/build/laser_filters/test_results/laser_filters/gtest-test_shadow_detector.xml" "--return-code" "/home/shota/catkin_ws/devel/.private/laser_filters/lib/laser_filters/test_shadow_detector --gtest_output=xml:/home/shota/catkin_ws/build/laser_filters/test_results/laser_filters/gtest-test_shadow_detector.xml")
set_tests_properties(_ctest_laser_filters_gtest_test_shadow_detector PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/shota/catkin_ws/src/laser_filters/CMakeLists.txt;82;catkin_add_gtest;/home/shota/catkin_ws/src/laser_filters/CMakeLists.txt;0;")
subdirs("gtest")
