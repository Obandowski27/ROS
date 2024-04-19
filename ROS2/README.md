# ROS 2

This file will contain information on how to set up and configure ROS2 workspaces.

## Creating packages in ROS 2

### Creating a package for Python

1. 

1. Once the python file has been created, go to the **setup.py** file within the package directory and look and adjust for the lines:

<code>
entry_points={

        'console_scripts': [
            "file_name1 = package_name.file_name1:main",
            "file_name2 = package_name.file_name2:main",
            "file_name3 = package_name.file_name3:main"
        ],
    },

</code>

3. All dependencies added in python files need to be added to the **package.xml** file by finding and adding:

<code><exec_depend>**dependencie_name**</exec_depend></code>

4. Run <code>colcon_build</code> in workspace

### Creating a package for C++

1. 

1. Once the C++ file has been created, go to the **CMakeLists.txt** file within the package directory and add the dependencies used within the package. As an example see below:

<code>
find_package(**dependency_name** REQUIRED)
</code>

1. Add executable and its dependencies in the same file as follows:

<code>
add_executable(**name_of_file** src/**name_of_file.cpp**)
ament_target_dependencies(**name_of_file** dependency_1 dependency_2)
</code>

1. Add name of the file in the **install** section of the code.

1. Add dependencies also in **package.xml** file as follows:

<code>
  <depend>***dependency_name*rcl_interfaces****</depend>
</code>

1. Save file and run <code>colcon build</code> in the workspace

### Creating a package without C++ or Python dependencies for URDF models:

1. Navigate to src folder in the workspace and type command in terminal: <code>ros2 pkg create --build-type ament_cmake  **name of the package**</code>

2. In a folder like this is typical to upload urdf models of projects including visualization and simulation.

3. Go back to workspace folder and then run command: <code>colcon build</code>

4. In order to create the urdf model of a system, create folder in the package directory named **urdf**. This file will have a format type <code>**name_of_the_file.urdf.xacro**</code>

5. Create another folder named **meshes** that will contain the **.STL** files of the model.

6. To find example of structure of the **urdf** file, check file src/bumperbot_description/urdf/bumperbot.urdf.xacro

7. Go to the CMakeLists.txt file within the package folder and look for the lines <code>install()</code> 

8. whithin these brackets write down the name of the folders created (in this case urdf and meshes). Also specify the location of these files. See example below:

<code>
install(

  DIRECTORY meshes urdf
  DESTINATION share/${PROJECT_NAME}
)
</code>

9. run <code>colcon build</code> in the workspace directory

10. To run the URDF simulation, make sure **urdf-tutorial** package is downloaded by running: <code>sudo apt get-install ros-**ROS_DISTRO**-urdf-tutorial</code>

11. To see simulation run command: <code>ros2 launch urdf_tutorial display.launch.py model:=**directory+file_name.urdf.xacro**
</code>

### Checking for parameters in ros2

1. Open workspace in terminal and run <code>. install/setup.bash</code>

2. run parameter file, i.e., <code>ros2 run bumperbot_cpp_examples simple_parameter</code>

3. Open new terminal and run command <code>ros2 param list</code> and check for parameters

4. To see parameters output run command <code>ros2 param get **/node_name** **parameter_name**</code>

5. Follow this example to change value of parameter: <code>ros2 run bumperbot_cpp_examples simple_parameter --ros-args -p simple_int_param:=30</code>

6. It is also possible to set the a parameter by running: <code>ros2 param set /simple_parameter simple_string_param "Hi ROS 2"</code>

7. While the file is running, once the parameter is changed you will receive a message: **Param simple_string_param changed! New value is: Hi ROS 2**

## Creating Launch files

1. When creating a launch file, make sure to add folders in the **CMakeLists.txt** file at the **install** section where different files/sources are being called in the launch file

2. add all <code><exec_depend>**dependencies**</exec_depend></code> in the **package.xml** file