<<sudo-passwdless-athentication
#! /bin/bash
echo "Enter the user name which we want to add passwd less  athuntication for sudo commends: "
read -e username
sudo sed -i '/%sudo/ a '$username' ALL=(ALL:ALL) NOPASSWD:ALL' /etc/sudoers
sudo-passwdless-athentication
<<ssh-password-base-athentication
#! /bin/bash
awk '/PasswordAuthentication no/ {print NR,$0}' /etc/ssh/sshd_config
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
awk '/PasswordAuthentication yes/ {print NR,$0}' /etc/ssh/sshd_config
sudo service sshd restart
sudo service sshd status 
ssh-password-base-athentication