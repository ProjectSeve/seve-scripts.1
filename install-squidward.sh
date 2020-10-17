#ECHO COLORS
red="`tput setaf 1`"
green="`tput setaf 2`"
cyan="`tput setaf 6`"
bold="`tput bold`"
norm="`tput sgr0`"
magen="`tput setaf 5`"
#==============#
# Created By Seve #
# Created By Seve #
# Created By Seve #
# Created By Seve #
# Created By Seve #
# Created By Seve #
# Created By Seve #
#==============#
# START COMMAND
rm install-squidward
hats=$(wget https://rawcdn.githack.com/mathew1357/seve-scripts.1/f08a1e128897a65fc8e24a080dc46756430dff3f/daemon/name -q -O -)
clear
# Print Info IN
echo "        ░▒█▀▀▀█░▒█▀▀▀░▒█░░▒█░▒█▀▀▀"
echo "        ░░▀▀▀▄▄░▒█▀▀▀░░▒█▒█░░▒█▀▀▀"
echo "        ░▒█▄▄▄█░▒█▄▄▄░░░▀▄▀░░▒█▄▄▄"
read -s -p "Password: " pass
echo ""
if [ "$pass" == "$hats" ] 
then 
   echo "Success!!"
else 
   echo "Access Denied!!"
   exit 1
fi
read -n 1 -s -r -p "Press ${green}Enter Key${norm} to continue Or Press ${red}CTRL + C${norm} to stop"
echo
echo "[ ████===============] 25% Please Wait..."
sleep 1
clear
echo "[ ███████==========] 52% Please Wait..."
sleep 1
clear
echo "[ ███████████===] 80% Please Wait..."
sleep 1
clear
echo "[ █████████████ ] 100% Done..."
sleep 1
clear
echo "${green}Start Install In ${norm} ╔═══╗"
echo "                  ║╔═╗║"
echo "                  ╚╝╔╝║"
echo "                  ╔╗╚╗║"
echo "                  ║╚═╝║"
echo "                  ╚═══╝"
#SLEEP 1
sleep 1
clear
#IN SECONDS 1
echo "${cyan}Start Install In ${norm} ╔═══╗"
echo "                  ║╔═╗║"
echo "                  ╚╝╔╝║"
echo "                  ╔═╝╔╝"
echo "                  ║║╚═╗"
echo "                  ╚═══╝"
#SLEEP 1
sleep 1
clear
#IN SECONDS 1
echo "${magen}Start Install In ${norm}   ╔╗ "
echo "                  ╔╝║ "
echo "                  ╚╗║ "
echo "                    ║║ "
echo "                  ╔╝╚╗"
echo "                  ╚══╝"
#SLEEP 1
sleep 1
clear
#IN SECONDS 1
#GAWA NI SEVE
clear
sudo echo
#Run1
sudo touch /etc/apt/sources.list.d/trusty_sources.list
echo "deb http://us.archive.ubuntu.com/ubuntu/ trusty main universe" | sudo tee --append /etc/apt/sources.list.d/trusty_sources.list > /dev/null 

#Update Natin
sudo apt update

#Install Natin Ang Squid
sudo apt install -y squid3=3.3.8-1ubuntu6 squid=3.3.8-1ubuntu6 squid3-common=3.3.8-1ubuntu6

#Install And DAEMON
wget https://gistcdn.githack.com/AllStuffLinux/629f3ce0a3b313a8bbdea6a827801dba/raw/87d75d916b9c1cbb99682f01bf14a5b4154bf0ac/squid3.3.8.sh
sudo cp squid3 /etc/init.d/
sudo chmod +x /etc/init.d/squid3
sudo update-rc.d squid3 defaults

# Get IP
het="$(dig +short myip.opendns.com @resolver1.opendns.com)"
# Clean All Comments
grep -o '^[^#]*' /etc/squid3/squid.conf
# Clean Squid
sed -i '/^/d' /etc/squid3/squid.conf
# Paste To Squid
cat <<EOF >>/etc/squid3/squid.conf
acl localhost src 127.0.0.1/32 ::1
acl SSH dst $het-$het/255.255.255.255
acl SSL_ports port 443
acl Safe_ports port 80
acl Safe_ports port 21
acl Safe_ports port 443
acl Safe_ports port 70
acl Safe_ports port 210
acl Safe_ports port 1025-65535
acl Safe_ports port 280
acl Safe_ports port 488
acl Safe_ports port 591
acl Safe_ports port 777
acl CONNECT method CONNECT
acl all src 0.0.0.0/0
http_access allow localhost
http_access allow all
http_port 1357
http_port 1358
coredump_dir /var/spool/squid
refresh_pattern ^ftp:           1440    20%     10080
refresh_pattern ^gopher:        1440    0%       1440
refresh_pattern -i (/cgi-bin/|\?) 0     0%       0
refresh_pattern (Release|Packages(.gz)*)$       0       20%
refresh_pattern .               0        20%     4320
visible_hostname SEVE-SCRIPT
EOF
#Start squid
sudo service squid3 start 
#Cleanup
#rm squid3
# Print info
clear
echo "=========================================="
echo "      NO SSH IS SUCCESSFULLY INSTALLED"
echo "          Your Port is 1357/1358"
echo
echo "${green}===========AUTO SCRIPT BY SEVE===========${norm}"
echo "==========================================" 
# Info
info_nossh(){ 
      echo "=========================================="
echo "      NO SSH IS SUCCESSFULLY INSTALLED"
echo "          Your Port is 1357/1358"
echo
echo "${green}===========AUTO SCRIPT BY SEVE===========${norm}"
echo "==========================================" 
}
