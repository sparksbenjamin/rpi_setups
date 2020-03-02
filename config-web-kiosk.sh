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
echo "URL for Kiosk to load. If wanting more than one, use a space between URLs"
read $URI
wait(10)
echo "Changing URL to:$URI"
wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/web-kiosk-config/kiosk.sh" -O /home/pi/kiosk.sh
chmod +x /home/pi/kiosk.sh
sed -i "s,https://time.is/,$URI,g" /home/pi/kiosk.sh
service kiosk stop
service kiosk start