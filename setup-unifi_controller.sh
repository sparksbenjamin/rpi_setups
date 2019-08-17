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
#setup unifi Install
apt update && apt install ca-certificates apt-transport-https
echo 'deb http://www.ui.com/downloads/unifi/debian stable ubiquiti' | tee /etc/apt/sources.list.d/100-ubnt-unifi.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.4.list
sudo apt update
wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ui.com/unifi/unifi-repo.gpg 
apt-key adv --keyserver keyserver.ubuntu.com --recv 06E85760C0A52C50

#Setup MongoDB Install
apt-key adv --keyserver keyserver.ubuntu.com --recv 9ECBEC467F0CEB10
echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/3.0 main" | tee /etc/apt/sources.list.d/mongodb-org-3.0.list
apt-get update

#Begin Install
apt install -y mongodb-org unifi

#Setup Java Install
#apt-key adv --recv-key --keyserver keyserver.ubuntu.com EEA14886
#add-apt-repository ppa:webupd8team/java
#echo 'deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main' >> /etc/apt/sources.list
#echo 'deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main' >> /etc/apt/sources.list
#apt-get update
#apt-get -y upgrade
#apt-get -y install oracle-java8-jdk
#apt-get -y install oracle-java8-installer
#apt-get -y --allow-unauthenticated install oracle-java8-installer
#apt-get -y install oracle-java8-set-default
#apt-get -y install oracle-java8-jdk unifi apt-transport-https
