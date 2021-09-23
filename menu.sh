#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Rpi Setup Menu"
TITLE="Setup Options"
MENU="Choose one of the following pre-configured setups:"

OPTIONS=(1 "PI-Hole"
         2 "Screenly-SOMO"
         3 "Exit")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            bash <(curl -sL https://git.io/JzVsP)
            ;;
        2)
            bash <(curl -sL https://www.screenly.io/install-ose.sh) ; bash <(curl -sL https://git.io/Jf900)
            ;;
        3)
            break
            ;;
esac
