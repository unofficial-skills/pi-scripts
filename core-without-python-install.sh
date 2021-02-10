cd
python3.8 -m venv homeassistant
cd homeassistant
source bin/activate
python3 -m pip install wheel
python3 -m pip install homeassistant
mkdir /root/.homeassistant
cd /etc/systemd/system/
wget https://raw.githubusercontent.com/unofficial-skills/pi-scripts/master/home-assistant.service
sudo systemctl --system daemon-reload
sudo systemctl enable home-assistant
