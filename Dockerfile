# Use the official Ubuntu base image
FROM ubuntu:24.04

# Update the package list
RUN apt-get update

# Install some basic packages
RUN apt-get install -y curl
RUN apt-get install -y vim
RUN apt-get install -y git
RUN apt-get install -y php

# Copy the new Apache configuration file
COPY ubuntu_24_04/etc/apache2/sites-available/site_1.conf /etc/apache2/sites-available/site_1.conf

# Enable the new site configuration
RUN a2dissite 000-default.conf 
RUN a2ensite site_1.conf

# Clean up the package cache
RUN rm -rf /var/lib/apt/lists/*

CMD ["apachectl", "-D", "FOREGROUND"]
