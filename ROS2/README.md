# ROS 2

This file will contain information on how to set up and configure ROS2 workspaces.

## Creating a packages in ROS 2

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