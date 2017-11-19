#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "use: $0 ip_address"
    exit 0;
fi
if [ -d "rdp_screenshots_raw" ]; 
  then
    mkdir rdp_screenshots_raw
fi
if [ -d "rdp_screenshots_jpg" ]; 
  then
    mkdir rdp_screenshots_jpg
fi
echo "screenshooting $1"
timeout 10s rdesktop-vrdp -u "" -T scrot-$1 $1 &
sleep 5
SCROTCMD="xwd -name scrot-$1 -out rdp_screenshots_raw/$1"
timeout 0.5s $SCROTCMD
sleep 5
cp rdp_screenshots_raw/$1 rdp_screenshots_jpg/$1.xwd
convert rdp_screenshots_jpg/$1.xwd rdp_screenshots_jpg/$1.jpg
rm rdp_screenshots_jpg/$1.xwd
echo "done grabbing $1"
