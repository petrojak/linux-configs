#Enable ufw to to start on system boot
ufw enable

#deny all incoming and outgoing trafic by default
ufw default deny incoming
ufw default deny outgoing

#allow outgoing trafic for basic services
ufw allow out 80/tcp #http
ufw allow out 443/tcp #https
ufw allow out 123/udp #ntp
ufw allow out 53/udp #dns
ufw allow out 22/tcp #ssh

#reload ufw to apply configured rules
ufw reload