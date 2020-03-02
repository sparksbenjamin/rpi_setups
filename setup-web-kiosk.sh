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
sudo apt-get clean
sudo apt-get autoremove -y
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install xdotool unclutter sed
#enable AutoLogin
[ -e /etc/init.d/lightdm ] && update-rc.d lightdm disable 2
  sed /etc/inittab -i -e "s/1:2345:respawn:\/sbin\/getty" --noclear 38400 tty1/1:2345:respawn:\/bin\/login -f pi tty1 <\/d$
wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/web-kiosk-config/kiosk.sh" -O /home/pi/kiosk.sh
chmod +x /home/pi/kiosk.sh
wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/web-kiosk-config/kiosk.service" -O /lib/systemd/system/kiosk.service
chmod +x /lib/systemd/system/kiosk.service
sudo systemctl enable kiosk.service
sudo systemctl start kiosk.service
exit
