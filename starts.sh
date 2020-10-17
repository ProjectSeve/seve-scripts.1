#ECHO COLORS
red="`tput setaf 1`"
green="`tput setaf 2`"
cyan="`tput setaf 6`"
bold="`tput bold`"
norm="`tput sgr0`"
magen="`tput setaf 5`"
# GET IP
het="$(dig +short myip.opendns.com @resolver1.opendns.com)"
# Script Info
info_script(){ 
      echo "=========================================="
echo "      NO SSH IS SUCCESSFULLY STARTED"
echo "          Your Port is 1357/1358"
echo "            Your IP: $het
echo "${green}===========AUTO SCRIPT BY SEVE===========${norm}"
echo "==========================================" 
}
# Start Services
sudo service squid3 restart
echo "${green}Loading.${norm}"
sleep .5
clear
echo "${green}Loading..${norm}"
sleep .5
clear
echo "${green}Loading...${norm}"
sleep .5
clear
echo "${green}Loading....${norm}"
sleep .5
clear
info_script
