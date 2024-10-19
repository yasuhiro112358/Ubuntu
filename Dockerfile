# Use the official Ubuntu base image
FROM ubuntu:24.04

# Update the package list and install any desired packages
RUN apt-get update && apt-get install -y \
    curl \
    vim \
    git \
    && rm -rf /var/lib/apt/lists/*


# Define the default command to run when starting the container
CMD ["bash"]