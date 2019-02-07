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
wget -O basic-install.sh "https://install.pi-hole.net"
chmod +x basic-install.sh
sudo ./basic-install.sh
rm basic-install.sh
wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/pi-hole-configs/pi-hole-update.sh" -O /etc/cron.daily/pi-hole-update.sh
chmod +x /etc/cron.daily/pi-hole-update.sh
exit
