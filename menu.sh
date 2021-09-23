#!/bin/bash
# Bash Menu Script Example

echo -e "${GREEN}
                     sssss:Sss:Sss
                 ss:===:Ssss:Ssss:Sss:s
  ____________ sss:==:Ss# X Ss:Sss:Ssss:Sss
  ````\\\\\\\\\~~~ss===s X+X S:Sss:Ss:Sssss:Ss
           vvvv ==== ss   X S:Sss:Ss :Ss:Ssss:Sss
          vv  v ====  s  /   ss:Sss Sss:Ss:Ssss:Sss:s
           vvv          X     ss:S s:S s:Sss:Sssss:Sss
            u     __   X+X   s:S s:Ss :Sss Ss:Ss s:Sssss
            uu   /@@    X       s:Ss Ssss ss:Ss sss:Ssss:s
             uu         X         s :Sss s:Sss ss:Sssssss:s
               u       X+X      )  Ssss sssss Ssssss :Ssssss:
               u        X      ) \  S: sss:S ssss:S sss:S :sss
               u       /      /   `\  Ssss:  Sss:s  ssSs:  sssss
               uu     X      u      \  Ss     Sss    Sss     Ssss_
               u @@) (_)   u'        \ s      ss      s        S  \_
               \u    u u  u           \        s
                \uuu/  uu/             \
                                        |
                                        |
                                        /
                                       /
                        __________    |
                      ./          \.  /
                     /              \|
                    /
                   /                                   /
                  /                                  ./
                 /         /~~~\                    /_______________
                /         /    /\__________________/
               /         /    /                 /
              /         /    /                /
             (         /    /             ../
             (        /    /           ../
              \       (   /          ./
               \~~~~~~~\ /         ./
                \_______\         /
                        (        (
                         \        \
                          \        \
                           \        (
                            \~~~~~~~~\
                             \________\
"

echo -e "${GREEN}#######################################${RESET}"
echo -e "${GREEN}#                                     #${RESET}"
echo -e "${GREEN}#   ${RESET}Main Menu   ${GREEN}#${RESET}"
echo -e "${GREEN}#                                     #${RESET}"
echo -e "${GREEN}#######################################${RESET}"
PS3='Please enter your choice: '
options=("Unifi Controller" "Unifi VoIP Controller" "PI-Hole" "RetroPI" "Transmission" "Web Kiosk" "Home-Assistant" "Thin-Client" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Unifi Controller")
            #echo "you chose choice 1"
	    wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/setup-unifi_controller.sh" -O setup-unifi_controller.sh && chmod +x setup-unifi_controller.sh && sudo ./setup-unifi_controller.sh && rm setup-unifi_controller.sh
            ;;
        "Unifi VoIP Controller")
            #echo "you chose choice 2"
	    wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/setup-unifi-voip-controller.sh" -O setup-unifi-voip-controller.sh && chmod +x setup-unifi-voip-controller.sh && sudo ./setup-unifi-voip-controller.sh && rm setup-unifi-voip-controller.sh
            ;;
        "PI-Hole")
            #echo "you chose choice $REPLY which is $opt"
	    wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/setup-pihole.sh" -O setup-pihole.sh && chmod +x setup-pihole.sh && sudo ./setup-pihole.sh && rm setup-pihole.sh
            ;;
	"RetroPI")
	    wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/setup-retropi.sh" -O setup-retropi.sh && chmod +x setup-retropi.sh && sudo ./setup-retropi.sh && rm setup-retropi.sh
	    ;;
	"Transmission")
	    wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/setup-transmission.sh" -O setup-transmission.sh && chmod +x setup-transmission.sh && sudo ./setup-transmission.sh && rm setup-transmission.sh
	    ;;
	"Web Kiosk")
	    wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/setup-web-kiosk.sh" -O setup-web-kiosk.sh && chmod +x setup-web-kiosk.sh && sudo ./setup-web-kiosk.sh && rm setup-web-kiosk.sh
	    ;;
	"Home-Assistant")
	    wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/setup-home-assistant.sh" -O setup-web-kiosk.sh && chmod +x setup-web-kiosk.sh && sudo ./setup-web-kiosk.sh && rm setup-web-kiosk.sh
	    ;;
	"Thin-Client")
	    wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/setup-rdp-thinclient.sh" -O setup.sh && chmod +x setup.sh && sudo ./setup.sh && rm -f setup.sh
	    ;;
	"Screenly OSE w/ SOMO")
	    bash <(curl -sL https://www.screenly.io/install-ose.sh) && bash <(curl -sL https://git.io/Jf900)
	    ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
