#! /bin/bash
echo "Enter the user name which we want to add passwd less  athuntication for sudo commends: "
read -e username
sudo sed '/%sudo/ a '$username' ALL=(ALL:ALL) NOPASSWD:ALL' /etc/sudoers