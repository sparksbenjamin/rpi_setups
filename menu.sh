#!/bin/bash
# Bash Menu Script Example

PS3='Please enter your choice: '
options=("Unifi Controller" "Unifi VoIP Controller" "PI-Hole" "RetroPI" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Option 1")
            #echo "you chose choice 1"
	    wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/setup-unifi_controller.sh" -O setup-unifi_controller.sh && chmod +x setup-unifi_controller.sh && sudo ./setup-unifi_controller.sh && rm setup-unifi_controller.sh
            ;;
        "Option 2")
            #echo "you chose choice 2"
	    wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/setup-unifi-voip-controller.sh" -O setup-unifi-voip-controller.sh && chmod +x setup-unifi-voip-controller.sh && sudo ./setup-unifi-voip-controller.sh && rm setup-unifi-voip-controller.sh
            ;;
        "Option 3")
            #echo "you chose choice $REPLY which is $opt"
	    wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/setup-pihole.sh" -O setup-pihole.sh && chmod +x setup-pihole.sh && sudo ./setup-pihole.sh && rm setup-pihole.sh
            ;;
	"Option 4")
	    wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/setup-retropi.sh" -O setup-retropi.sh && chmod +x setup-retropi.sh && sudo ./setup-retropi.sh && rm setup-retropi.sh
	    ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
