cd
python3.8 -m venv homeassistant
cd homeassistant
source bin/activate
python3 -m pip install wheel
python3 -m pip install homeassistant
mkdir /root/.homeassistant
cd /etc/systemd/system/
wget https://raw.githubusercontent.com/unofficial-skills/pi-scripts/master/home-assistant.service
mkdir /root/.homeassistant/custom_components/
mkdir /root/.homeassistant/custom_components/hacs
cd /root/.homeassistant/custom_components/
wget https://github.com/hacs/integration/releases/latest/download/hacs.zip
unzip /root/.homeassistant/custom_components/hacs.zip -d /root/.homeassistant/custom_components/hacs >/dev/null 2>&1
sudo systemctl --system daemon-reload
sudo systemctl enable home-assistant
sudo reboot
