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
if pgrep -x "gedit" > /dev/null
then
  clear
  echo -e "${RED}#######################################${RESET}"
  echo -e "${RED}#                                     #${RESET}"
  echo -e "${RED}#   ${RESET}Known issues with bind9(named) service.   ${RED}#${RESET}"
  echo -e "${RED}#                                     #${RESET}"
  echo -e "${RED}#######################################${RESET}"
  exit 1
fi
apt update
apt upgrade
sudo apt-get install transmission-daemon
mkdir -p /media/storage/Torrent_inprogress
mkdir -p /media/storage/Torrent_complete
