FROM ros:kinetic

RUN apt-get update && apt-get install -y \
    && rm -rf /var/lib/apt/lists/
