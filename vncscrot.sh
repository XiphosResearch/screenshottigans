#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "use: $0 ip_address"
    exit 0;

fi
echo "screenshooting $1"
timeout 10s vncviewer -title scrot-$1 $1 &
sleep 5
SCROTCMD="xwd -name scrot-$1 -out screenshots/vnc/raw/$1"
#echo $SCROTCMD
timeout 0.5s $SCROTCMD
sleep 5
cp screenshots/vnc/raw/$1 screenshots/vnc/jpg/$1.xwd
convert screenshots/vnc/jpg/$1.xwd screenshots/vnc/jpg/$1.jpg
rm screenshots/vnc/jpg/$1.xwd
echo "done grabbing $1"
