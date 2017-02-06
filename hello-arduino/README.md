## An example for running ROS Arduino nodes in Docker

This example assumes your computer has ROS installed on your host. If not, 
follow the instructions in the ROS wiki (http://wiki.ros.org/kinetic/Installation/Ubuntu)
to install `ros-kinetic-desktop-full`

Additionally, to compile the Arduino sketch, you need to follow the Arduino IDE
setup guide (http://wiki.ros.org/rosserial_arduino/Tutorials/Arduino%20IDE%20Setup)

Before starting up the Arduino container, modify the the `docker-compose.yaml`
file to match which device your Arduino is. ex: `/dev/ttyACM0`

Start the action server:
 
    docker-compose up

In a new terminal window source ROS 

    source /opt/ros/kinetic/setup.bash
    
set your ROS_MASTER_URI to http://master:11311

    ROS_MASTER_URI=http://master:11311
    
listen to the hello world message from Arduino

    rostopic echo /chatter