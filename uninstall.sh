sudo systemctl stop home-assistant
sudo systemctl disable home-assistant
rm /etc/systemd/system/home-assistant.service
cd /root/
rm -r /root/.homeassistant/
rm -r /root/homeassistant
