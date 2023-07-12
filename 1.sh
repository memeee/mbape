
YELLOW="\033[38;5;11m"
RESET="\033[0m"
CYAN='\033[36m'

echo 'Dependents :'
echo -e $CYAN
echo 'nodejs ,npm ,git ,unzip '
echo -e $YELLOW
echo 'Continue (y/n)? '
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then 

echo -e $CYAN

echo "git clone https://github.com/memeee/mbape.git";
git clone 'https://github.com/memeee/mbape.git';

cd './mbape';
echo "unzip zip.zip";
unzip  -o -d './' './zip.zip';
rm zip.zip;

echo "npm install";
npm install;

clear
echo Settings

echo -e $CYAN
echo "Directory file manager is $PWD"

echo -e $YELLOW
read -p "Inter Directory for file manager : " dirv
echo  '{"dir":"${dirv}",' > settings.json
clear

echo -e $CYAN
ifconfig

echo -e $YELLOW
read -p "inter Ip : " ipv 
echo '"ip":"${ipv}",' >> settings.json
clear

read -p "inter Port : " portv 
echo '"port":"${portv}"}' >> settings.json
clear


echo -e $CYAN
echo "END.Copy this alias"
echo -e $YELLOW
echo "alias fmn='node $PWD/index.js'"
echo -e $CYAN
echo "exit"

else
    RESET="\033[0m"
    echo exit	
fi

#bash <(wget -qO- http://192.168.1.64/set.sh)
#bash <(curl  http://192.168.1.64/set.sh)