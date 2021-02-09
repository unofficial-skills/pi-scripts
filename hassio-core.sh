sudo su
cd
apt update
apt upgrade -y
apt-get install python3 python3-dev python3-venv python3-pip libffi-dev libssl-dev libjpeg-dev zlib1g-dev autoconf build-essential libopenjp2-7 libtiff5 python -y
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev -y
wget https://www.python.org/ftp/python/3.8.2/Python-3.8.2.tar.xz
tar -xf Python-3.8.2.tar.xz
cd Python-3.8.2
./configure --enable-optimizations
make -j 4
sudo make altinstall
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
reboot
