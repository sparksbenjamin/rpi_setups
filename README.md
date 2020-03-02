<h1>Raspberry PI Setup Scripts</h1>

List of scripts that will install and setup differnet functions for a Raspberry Pi.  Please note that these scripts are offered on an as is situation.  I am also not a devolper with any of these systems.  Now that all of that is out of the way if you have a suggested system you would like to have automated for setup and install, let me know and I will see what I can do. 

As Request there is a main script that will guide you to run the correct script.  This means you now only need to remember <bold>1 command to rule them all</bold>.  I hope this makes things a little eaiser, I will still have the commands listed below for direct use if you still need them. 
<h2>Menu</h2>
<p>
  This will serve as a list of options to run different seutps on the PI.  This script does nothing more than provide a list of all the scripts that are provided.  Serving as a shortcut or shorthand to get the installs done that you need.  Each one of the Options are listed below along with the command for it.
</p>
<h4><code></h4>
  wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/menu.sh" -O menu.sh && chmod +x menu.sh && sudo ./menu.sh && rm menu.sh 
</code>

<h3>Unifi Controller</h3>
  <p>This will add repos for Ubnt Unifi controller software and Java.  This setup can be kept up to date by using apt-get.  For more information about Unifi Controller software please view their website <a href='https://www.ui.com/software/' target='_blank'>https://www.ui.com/software/</a>
  </p>
  
  <p>
  <h4>Code:</h4>
  <code>wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/setup-unifi_controller.sh" -O setup-unifi_controller.sh && chmod +x setup-unifi_controller.sh && sudo ./setup-unifi_controller.sh && rm setup-unifi_controller.sh</code>
  </p>

<h3>Unifi VoIP Controller</h3>
  <p>This will add repos for Ubnt Unifi VoIP controller software and Java.  This setup can be kept up to date by using apt-get.  For more information about Unifi Controller software please view their website <a href='https://www.ui.com/software/' target='_blank'>https://www.ui.com/software/</a>
  </p>
  
  <p>
  <h4>Code:</h4>
  <code>wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/setup-unifi-voip-controller.sh" -O setup-unifi-voip-controller.sh && chmod +x setup-unifi-voip-controller.sh && sudo ./setup-unifi-voip-controller.sh && rm setup-unifi-voip-controller.sh</code>
  </p>

<h3>PI-Hole</h3>
<p>
    Since Pi-Hole can not be updated with apt-get, this will add a script to daily cron jobs.  This will ensure that your install stays up-to-date. Once the install is complete you will need to set your device to be the DNS server in your DHCP settings.  If your DHCP server does not have the option to set the DNS server then you can use the built in DHCP server.
 <br />
  For more information about Pi-Hole check out their website <a href='https://pi-hole.net/' target='_blank'>https://pi-hole.net/</a>
</p>
<h4>Code:</h4><code>wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/setup-pihole.sh" -O setup-pihole.sh && chmod +x setup-pihole.sh && sudo ./setup-pihole.sh && rm setup-pihole.sh</code>

<h3>Retro-PI</h3>
<p>
  RetroPi is a game emulator project.  Play your favorite old skool games using a raspberry pi. Easy to setup with this simple script. 
</p>
<h4>Code:</h4>
<code>wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/setup-retropi.sh" -O setup-retropi.sh && chmod +x setup-retropi.sh && sudo ./setup-retropi.sh && rm setup-retropi.sh
</code>
<h3>Transmission</h3>
<p>
  Always on Torrent Downloader
</p>
<h4>Code:</h4>
<code>wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/setup-transmission.sh" -O setup-transmission.sh && chmod +x setup-transmission.sh && sudo ./setup-transmission.sh && rm setup-transmission.sh
</code>
<h3>Setup Web Kiosk</h3>
<p>
   Great for digital signage or interactive stations.  This script will setup your PI to be hookedup and run a website on boot.  It will also lock down the pi for public usage.
</p>
<h4>Code:</h4>
<code>wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/setup-transmission.sh" -O setup-transmission.sh && chmod +x setup-transmission.sh && sudo ./setup-transmission.sh && rm setup-transmission.sh
</code>
