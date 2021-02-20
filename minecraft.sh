sudo su
cd
sudo apt install default-jdk -y
sudo apt install mariadb-server -y
wget https://packagecloud.io/pufferpanel/pufferpanel/packages/raspbian/buster/pufferpanel_2.1.3_arm64.deb/download.deb
sudo dpkg -i download.deb
systemctl enable pufferpanel
systemctl start pufferpanel
pufferpanel user add admin
sudo mysql_secure_installation
