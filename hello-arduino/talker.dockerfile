FROM ros:kinetic

RUN apt-get update && apt-get install -y \
    ros-kinetic-rosserial-arduino \
    ros-kinetic-rosserial \
    && rm -rf /var/lib/apt/lists/
