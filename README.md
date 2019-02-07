<h1>Raspberry PI II+ Setup Scripts</h1>

List of scripts that will install and setup differnet functions for a Raspberry Pi II.  Please note that these scripts are offered on an as is situation.  I am also not a devolper with any of these systems.  Now that all of that is out of the way if you have a suggested system you would like to have automated for setup and install, let me know and I will see what I can do. 

<h2>Unifi Controller</h2>
  <p>This will add repos for Ubnt Unifi controller software and Java.  This setup can be kept up to date by using apt-get.  For more information about Unifi Controller software please view their website <a href='https://www.ui.com/software/' target='_blank'>https://www.ui.com/software/</a>
  </p>
  
  <p>
  <h3>Code:</h3>
  <code>wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/setup-unifi_controller.sh" -O setup-unifi_controller.sh && chmod +x setup-unifi_controller.sh && sudo ./setup-unifi_controller.sh && rm -y setup-unifi_controller.sh</code>
  </p>
  
<h2>PI-Hole</h2><br />
<p>
    Since Pi-Hole can not be updated with apt-get, this will add a script to daily cron jobs.  This will ensure that your install stays up-to-date. 
 <br />
  For more information about Pi-Hole check out their website <a href='https://pi-hole.net/' target='_blank'>https://pi-hole.net/</a>
</p>
<h3>Code:</h3><code>wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/setup-pihole.sh" -O setup-pihole.sh && chmod +x setup-pihole.sh && sudo ./setup-pihole.sh && rm -y setup-pihole.sh</code>

