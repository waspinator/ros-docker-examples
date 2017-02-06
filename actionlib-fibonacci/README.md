## An example for running ROS action servers in Docker

**NOT WORKING**

This example assumes your computer has ROS installed on your host. If not, 
follow the instructions in the ROS wiki (http://wiki.ros.org/kinetic/Installation/Ubuntu)
to install `ros-kinetic-desktop-full`


Start the action server:
 
    docker-compose up

In a new terminal window source ROS 

    source /opt/ros/kinetic/setup.bash
    
set your ROS_MASTER_URI to http://master:11311

    ROS_MASTER_URI=http://master:11311
    
set your ROS_IP to the IP address listed for your gateway when you run

    docker network inspect actionlibfibonacci_default
    
For example:

    ROS_IP=172.21.0.1
    
run the fibonacci client on the host

    rosrun actionlib_tutorials fibonacci_client