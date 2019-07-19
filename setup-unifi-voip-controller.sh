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

echo 'deb http://www.ui.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/100-ubnt-unifi.list
wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ui.com/unifi/unifi-repo.gpg 
apt-key adv --keyserver keyserver.ubuntu.com --recv 06E85760C0A52C50 
apt-key adv --recv-key --keyserver keyserver.ubuntu.com EEA14886
add-apt-repository ppa:webupd8team/java
echo 'deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main' >> /etc/apt/sources.list
echo 'deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main' >> /etc/apt/sources.list
apt-get update
apt-get -y upgrade
apt --fix-broken install
#apt-get -y install oracle-java8-jdk
#apt-get -y install oracle-java8-installer
apt-get -y --allow-unauthenticated install oracle-java8-installer
apt-get -y install oracle-java8-set-default
apt-get -y install oracle-java8-jdk unifi-voip apt-transport-https
apt --fix-broken install
