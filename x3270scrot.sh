#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "use: $0 ip_address"
    exit 0;

fi
echo "screenshooting $1"
timeout 10s x3270 -title scrot-$1 $1 &
sleep 5
SCROTCMD="xwd -name scrot-$1 -out screenshots/3270/raw/$1"
#echo $SCROTCMD
timeout 0.5s $SCROTCMD
sleep 5
cp screenshots/3270/raw/$1 screenshots/3270/jpg/$1.xwd
convert screenshots/3270/jpg/$1.xwd screenshots/3270/jpg/$1.jpg
rm screenshots/3270/jpg/$1.xwd
echo "done grabbing $1"
