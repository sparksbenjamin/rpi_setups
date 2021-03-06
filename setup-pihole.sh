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
curl -sSL https://install.pi-hole.net | bash
sudo wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/pi-hole-configs/pi-hole-update.sh" -O /etc/cron.daily/pi-hole-update.sh
chmod +x /etc/cron.daily/pi-hole-update.sh
sudo apt -y install unbound
sudo wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/pi-hole-configs/unbound.conf" -O /etc/unbound/unbound.conf.d/pi-hole.conf
sudo service unbound restart
exit
