# Notes to consider for ROS

![alt text](Various/ROS.png)

## Creating a workspace

1. <code>mkdir catkin_ws</code>
2. <code>cd catkin_ws</code>
3. <code>mkdir src</code>
4. <code>catkin_make</code>
5. <code>source devel/setup.sh</code>

## ROS - Packages

To create a package in ROS follow the next steps:

1. Navigate to the src folder within the workspace:

 <code>cd catkin_ws/src</code>

 2. Create package within src folder
 
 <code>catkin_create_pkg **NameOfThePackage** roscpp rospy std_msgs</code>

 - This will create a package in the src folder with its respective name and dependencies.
 - Once the package is created, <code>**CMakeLists.txt**, **include**, **package.xml**, and **source**</code> are created.
 - <code>CMakeLists.txt</code> file contains dependencies of the package as follows:

<code>find_package(catkin REQUIRED COMPONENTS
    roscpp
    rospy
    std_msgs
)</code>

**Notes:**

- Any time is required to add a new dependency for the package, this list has to be updated in order to work. Say you are now using a script that uses **rospy_tutorials** dependency, then it will be necessary to add **rospy_tutorials** within the list of dependencies. 

In addition, it will also be necessary to navigate into the **package.xml** file within the package directory and add as follows:

<code><build_depend>**NameOfDependency**<build_depend></code>
<code><build_export_depend>**NameOfDependency**<build_export_depend></code>
<code><exec_depend>**NameOfDependency**<exec_depend></code>

3. Go back to workspace folder and run <code>catkin_make</code>

## ROS Nodes

- Processes that perform computation
- Allow communication between nodes through topics, services, parameters and servers
- Reduce code complexity
- Fault tolerance
- Can be written in Python or C++

### Take into consideration for Nodes:

- Once a node is created in C++

1. File where node is created should be located within the src folder of package directory

Once file is created:

2. go back to the package folder
3. Open <code>CMakeLists.txt</code> file
4. Look for portion of the code that says <code>Declare a C++ Exectutable</code>
5. add as follows:

<code>add_executable(node_cpp src/**NameOfTheFile.cpp**)
target_link_libraries(node_cpp ${catkin_LIBRARIES})</code>

This step will make the C++ file executable.

6. Go back to workspace directory
7. <code>catkin_make</code>
8. Once workspace is built, C++ executable will be found at catkin_ws/devel/lib/**PackageName**
9. Run executable: <code>./**NameOfTheFile**</code>

- Once a node is created in Python

1. File where node is created should be located within a script folder in the package directory
2. Make file executable with command <code>chmod +x **NameOfFile.py**</code> 
3. There is no need to <code>catkin_make</code> for python files.

**Notes:** 

- To find examples of the nodes, navigate through the packages in the example and check for structure of the files.
- The same process of making C++ file executable needs to be done for every C++ file created in every package including Publisher, subscriber, etc.

### To run nodes:

1. <code>roscore</code>
2. <code>source devel/setup.sh</code>
3. <code>rosrun **NameOfThePackage NameOfTheFile**</code>

## Creating messages package in a workspace

1. Go to **src** diretory of workspace and run following commands:
<code>catkin_create_pks **NameOfThePackage** roscpp rospy std_msgs</code>
2. Navigate to the package directory
3. remove **include** and **src** folders as follows:
<code>rm -rf include/</code>
<code>rm -rf src/</code>
4. add in **package.xml** file as follows:
<code><build_depend>message_generation<build_depend></code>
<code><exec_depend>message_runtime<exec_depend></code>
5. Go to CMakeLists.txt
add in **find_package(catkin REQUIRED COMPONENTS):** 
<code>message_generation</code>
6. Find **Generate added messages and services with any dependencies listed here**
uncomment lines for **generate_messages** as follows:
<code>generate messages(
    DEPENDENCIES
    std_msgs
)</code>
7. Find **catkin_package**
Uncomment line <code>CATKIN_DEPENDS roscpp rospy std_msgs</code> and add <code>message_runtime</code>
8. Package is ready for messages
9. Create folder named msg
10. Insert message files in this folder