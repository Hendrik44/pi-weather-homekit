#!/bin/sh
sudo apt-get install libavahi-compat-libdnssd-dev -y
sudo npm install -g --unsafe-perm homebridge
sudo npm install -g homebridge-advanced-http-temperature-humidity

mkdir -p ~/.homebridge

cd $HOME
git clone https://github.com/Hendrik44/pi-weather-homekit.git
cp pi-weather-homekit/config.json ~/.homebridge/.

sudo cp pi-weather-homekit/homebridge /etc/init.d/homebridge
sudo chmod 755 /etc/init.d/homebridge
sudo update-rc.d homebridge defaults
sudo /etc/init.d/homebridge start
sudo /etc/init.d/homebridge status
