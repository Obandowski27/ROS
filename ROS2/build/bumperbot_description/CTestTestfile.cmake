# CMake generated Testfile for 
# Source directory: /media/david/Storage/David/Research/Github/ROS/ROS2/src/bumperbot_description
# Build directory: /media/david/Storage/David/Research/Github/ROS/ROS2/build/bumperbot_description
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(flake8 "/usr/bin/python3" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/media/david/Storage/David/Research/Github/ROS/ROS2/build/bumperbot_description/test_results/bumperbot_description/flake8.xunit.xml" "--package-name" "bumperbot_description" "--output-file" "/media/david/Storage/David/Research/Github/ROS/ROS2/build/bumperbot_description/ament_flake8/flake8.txt" "--command" "/opt/ros/humble/bin/ament_flake8" "--xunit-file" "/media/david/Storage/David/Research/Github/ROS/ROS2/build/bumperbot_description/test_results/bumperbot_description/flake8.xunit.xml")
set_tests_properties(flake8 PROPERTIES  LABELS "flake8;linter" TIMEOUT "60" WORKING_DIRECTORY "/media/david/Storage/David/Research/Github/ROS/ROS2/src/bumperbot_description" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/ament_cmake_flake8/cmake/ament_flake8.cmake;63;ament_add_test;/opt/ros/humble/share/ament_cmake_flake8/cmake/ament_cmake_flake8_lint_hook.cmake;18;ament_flake8;/opt/ros/humble/share/ament_cmake_flake8/cmake/ament_cmake_flake8_lint_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/media/david/Storage/David/Research/Github/ROS/ROS2/src/bumperbot_description/CMakeLists.txt;22;ament_package;/media/david/Storage/David/Research/Github/ROS/ROS2/src/bumperbot_description/CMakeLists.txt;0;")
add_test(lint_cmake "/usr/bin/python3" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/media/david/Storage/David/Research/Github/ROS/ROS2/build/bumperbot_description/test_results/bumperbot_description/lint_cmake.xunit.xml" "--package-name" "bumperbot_description" "--output-file" "/media/david/Storage/David/Research/Github/ROS/ROS2/build/bumperbot_description/ament_lint_cmake/lint_cmake.txt" "--command" "/opt/ros/humble/bin/ament_lint_cmake" "--xunit-file" "/media/david/Storage/David/Research/Github/ROS/ROS2/build/bumperbot_description/test_results/bumperbot_description/lint_cmake.xunit.xml")
set_tests_properties(lint_cmake PROPERTIES  LABELS "lint_cmake;linter" TIMEOUT "60" WORKING_DIRECTORY "/media/david/Storage/David/Research/Github/ROS/ROS2/src/bumperbot_description" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/ament_cmake_lint_cmake/cmake/ament_lint_cmake.cmake;47;ament_add_test;/opt/ros/humble/share/ament_cmake_lint_cmake/cmake/ament_cmake_lint_cmake_lint_hook.cmake;21;ament_lint_cmake;/opt/ros/humble/share/ament_cmake_lint_cmake/cmake/ament_cmake_lint_cmake_lint_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/media/david/Storage/David/Research/Github/ROS/ROS2/src/bumperbot_description/CMakeLists.txt;22;ament_package;/media/david/Storage/David/Research/Github/ROS/ROS2/src/bumperbot_description/CMakeLists.txt;0;")
add_test(pep257 "/usr/bin/python3" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/media/david/Storage/David/Research/Github/ROS/ROS2/build/bumperbot_description/test_results/bumperbot_description/pep257.xunit.xml" "--package-name" "bumperbot_description" "--output-file" "/media/david/Storage/David/Research/Github/ROS/ROS2/build/bumperbot_description/ament_pep257/pep257.txt" "--command" "/opt/ros/humble/bin/ament_pep257" "--xunit-file" "/media/david/Storage/David/Research/Github/ROS/ROS2/build/bumperbot_description/test_results/bumperbot_description/pep257.xunit.xml")
set_tests_properties(pep257 PROPERTIES  LABELS "pep257;linter" TIMEOUT "60" WORKING_DIRECTORY "/media/david/Storage/David/Research/Github/ROS/ROS2/src/bumperbot_description" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/ament_cmake_pep257/cmake/ament_pep257.cmake;41;ament_add_test;/opt/ros/humble/share/ament_cmake_pep257/cmake/ament_cmake_pep257_lint_hook.cmake;18;ament_pep257;/opt/ros/humble/share/ament_cmake_pep257/cmake/ament_cmake_pep257_lint_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/media/david/Storage/David/Research/Github/ROS/ROS2/src/bumperbot_description/CMakeLists.txt;22;ament_package;/media/david/Storage/David/Research/Github/ROS/ROS2/src/bumperbot_description/CMakeLists.txt;0;")
add_test(xmllint "/usr/bin/python3" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/media/david/Storage/David/Research/Github/ROS/ROS2/build/bumperbot_description/test_results/bumperbot_description/xmllint.xunit.xml" "--package-name" "bumperbot_description" "--output-file" "/media/david/Storage/David/Research/Github/ROS/ROS2/build/bumperbot_description/ament_xmllint/xmllint.txt" "--command" "/opt/ros/humble/bin/ament_xmllint" "--xunit-file" "/media/david/Storage/David/Research/Github/ROS/ROS2/build/bumperbot_description/test_results/bumperbot_description/xmllint.xunit.xml")
set_tests_properties(xmllint PROPERTIES  LABELS "xmllint;linter" TIMEOUT "60" WORKING_DIRECTORY "/media/david/Storage/David/Research/Github/ROS/ROS2/src/bumperbot_description" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/ament_cmake_xmllint/cmake/ament_xmllint.cmake;50;ament_add_test;/opt/ros/humble/share/ament_cmake_xmllint/cmake/ament_cmake_xmllint_lint_hook.cmake;18;ament_xmllint;/opt/ros/humble/share/ament_cmake_xmllint/cmake/ament_cmake_xmllint_lint_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/humble/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/media/david/Storage/David/Research/Github/ROS/ROS2/src/bumperbot_description/CMakeLists.txt;22;ament_package;/media/david/Storage/David/Research/Github/ROS/ROS2/src/bumperbot_description/CMakeLists.txt;0;")
