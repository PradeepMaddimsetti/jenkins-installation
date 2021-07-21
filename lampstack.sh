sudo apt update
sudo apt install apache2 -y
systemctl status apache2 
sudo ufw app list
sudo ufw app info "Apache"
sudo ufw app info "Apache Full"
sudo ufw app info "Apache Secure"
sudo ufw allow in "Apache Full" 
# for knowing publicip of server
curl http://icanhazip.com
sudo apt install mysql-server -y
sudo apt install php libapache2-mod-php php-mysql -y
sudo apt install php-cli -y




