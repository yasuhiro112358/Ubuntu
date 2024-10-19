# Use the official Ubuntu base image
FROM ubuntu:24.04

# Update the package list
RUN apt-get update

# Install some basic packages
RUN apt-get install -y curl
RUN apt-get install -y vim
RUN apt-get install -y git
RUN apt-get install -y php

# Clean up the package cache
RUN rm -rf /var/lib/apt/lists/*

# Define the default command to run when starting the container
CMD ["bash"]