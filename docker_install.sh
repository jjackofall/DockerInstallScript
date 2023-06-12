#!/bin/bash
################################################################################
# Script for installing Docker and Compose on Ubuntu 16.04, 18.04 and 20.04 (could be used for other version too)
# Author: Sumit Khanna
#-------------------------------------------------------------------------------
# This script will install Docker compose on your Ubuntu server.
#-------------------------------------------------------------------------------
# Make a new file:
# sudo nano docker_install.sh
# Place this content in it and then make the file executable:
# sudo chmod +x docker-install.sh
# Execute the script to install docker:
# ./docker_install
################################################################################

#--------------------------------------------------
# Update Server
#--------------------------------------------------
echo -e "\n---- Update Server ----"
# universe package is for Ubuntu 18.x
sudo add-apt-repository universe
sudo add-apt-repository "deb http://mirrors.kernel.org/ubuntu/ xenial main"
sudo apt-get update
sudo apt-get upgrade -y

#--------------------------------------------------
# Install Docker
#--------------------------------------------------
echo -e "\n---- Install Docker ----"
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
echo -e "\n---- Installing the default docker version ----"
sudo apt install docker-ce -y

sudo systemctl enable docker


echo "-----------------------------------------------------------"
echo "Done! The Docker is up and running."
echo "Start Docker service: sudo service docker start"
echo "Stop Docker service: sudo service docker stop"
echo "Restart Docker service: sudo service docker restart"
echo "Check Docker service status: sudo service docker status"
echo "Check Docker version: docker -v"
echo "-----------------------------------------------------------"
