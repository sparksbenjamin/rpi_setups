#! /bin/bash
# Check for root (SUDO).
if [ "$EUID" -ne 0 ]
then
  clear
  echo -e "${RED}#######################################${RESET}"
  echo -e "${RED}#                                     #${RESET}"
  echo -e "${RED}#   ${RESET}Please run this script as root.   ${RED}#${RESET}"
  echo -e "${RED}#                                     #${RESET}"
  echo -e "${RED}#######################################${RESET}"
  exit 1
fi
#clean packages
sudo apt-get purge wolfram-engine scratch scratch2 nuscratch sonic-pi idle3 -y
sudo apt-get purge smartsim java-common minecraft-pi libreoffice* -y
sudo apt install matchbox-keyboard -y
sudo apt-get clean
sudo apt-get autoremove -y
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install xdotool unclutter sed
sudo apt-get install python3 python3-dev python3-venv python3-pip libffi-dev libssl-dev libtiff-dev autoconf build-essential libopenjp2-7 libjpeg-dev zlib1g-dev
sudo useradd -rm homeassistant -G dialout,gpio,i2c
cd /srv
sudo mkdir homeassistant
sudo chown homeassistant:homeassistant homeassistant
sudo -u homeassistant -H -s
cd /srv/homeassistant
python3.8 -m venv .
source bin/activate
python3 -m pip install wheel
pip3 install homeassistant
exit
