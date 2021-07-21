#! /bin/bash
echo "Enter package name for installation: "
read package
sudo apt update
sudo apt-get install $package -y
