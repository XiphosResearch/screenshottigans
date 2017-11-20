#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "use: $0 ip_address"
    exit 0;
fi
echo "screenshooting $1"
timeout 10s rdesktop-vrdp -u "" -T scrot-$1 $1 &
sleep 5
SCROTCMD="xwd -name scrot-$1 -out screenshots/rdp/raw/$1"
timeout 0.5s $SCROTCMD
sleep 5
cp screenshots/rdp/raw/$1 screenshots/rdp/jpg/$1.xwd
convert screenshots/rdp/jpg/$1.xwd screenshots/rdp/jpg/$1.jpg
rm screenshots/rdp/jpg/$1.xwd
echo "done grabbing $1"
