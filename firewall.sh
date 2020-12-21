# This basicallt ensures I always have the latest rules according to
# the ports I allow. It will first disable, then reset, then enable,
# then set the ports I want to use.
# Especially handy when using different sets of rules based on what's needed.

sudo ufw --force disable
sudo ufw --force reset
sudo ufw enable

# The Basics
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Let's connect the daily usages
sudo ufw allow out 80/tcp
sudo ufw allow out 443/tcp
sudo ufw allow out 7685/tcp
sudo ufw allow out ssh

# Minetest
sudo ufw allow out 30000/tcp
sudo ufw allow in 30000/tcp
sudo ufw allow out 30000/udp
sudo ufw allow in 30000/udp

# Chromecast (for VLC streaming to TV)
sudo ufw allow out 8008/tcp
sudo ufw allow out 8009/tcp
sudo ufw allow out 8010/tcp
sudo ufw allow out 32768:61000/udp
sudo ufw allow in 8010/tcp

## Anything below has been disabled until further notice based on usage.

# Diablo 2 LoD Ports
#sudo ufw allow out 4000/tcp
#sudo ufw allow out 6112/tcp
#sudo ufw allow in 4000/tcp
#sudo ufw allow in 6112/tcp

# Hamachi Ports
#sudo ufw allow out 12975/tcp
#sudo ufw allow out 17771/udp
#sudo ufw allow out 32976/tcp
#sudo ufw allow in 12975/tcp
#sudo ufw allow in 17771/udp
#sudo ufw allow in 32976/tcp

# UFW ports WoW Cata Twinstar
#sudo ufw allow out 1119,3724,6012/tcp
#sudo ufw allow out 1119,3724,6012/udp
#sudo ufw allow in 1119,3724,6012/tcp
#sudo ufw allow in 1119,3724,6012/udp


# Reload UFW to ensure all rules are added and working
sudo ufw reload

# Show UFW List of Rules
sudo ufw status verbose
