#!/bin/bash

# Update packages
sudo apt-get update -y

# Install Java (required for Jenkins)
sudo apt-get install openjdk-17-jdk -y

# Add Jenkins key and repo
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Update and install Jenkins
sudo apt-get update -y
sudo apt-get install jenkins -y

# Enable and start Jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins
