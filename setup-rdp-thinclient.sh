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
sudo apt upgrade -y
sudo apt-get install --no-install-recommends xserver-xorg x11-xserver-utils xinit openbox xdg-utils -y
sudo apt install remmina -y
echo "[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx" >> /home/pi/.profile
sed -i '/^[^#]/ s/\(^.*.xsession.*$\)/#\1/' file
sudo echo "exec openbox-session" >> /etc/X11/xinit/xinitrc
sudo echo "xset s off" >> /etc/xdg/openbox/autostart
sudo echo "xset s noblank" >> /etc/xdg/openbox/autostart
sudo echo "xset -dpms" >> /etc/xdg/openbox/autostart
sudo echo "remmina -c /home/pi/windows.remmina &" >> /etc/xdg/openbox/autostart
exit
