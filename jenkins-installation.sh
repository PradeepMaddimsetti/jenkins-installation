#!/bin/bash
cd ~
sudo apt-get update  
sudo apt-get install openjdk-11-jdk -y
sudo java -version
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins -y
sudo apt-get install maven -y
sudo systemctl status jenkins
cat /var/lib/jenkins/secrets/initialAdminPassword
