#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "use: $0 ip_address"
    exit 0;

fi
mkdir -p screenshots/telnet/raw/
mkdir -p screenshots/telnet/jpg/
mkdir -p screenshots/telnet/text/
echo "screenshooting $1"
CMD="telnet $1 2>&1 | tee screenshots/telnet/text/$1.txt"
temp_file=$(mktemp)
echo $CMD > $temp_file
chmod +x $temp_file
timeout 10s xfce4-terminal -T scrot-$1 -e $temp_file &
sleep 5
SCROTCMD="xwd -name scrot-$1 -out screenshots/telnet/raw/$1"
echo $SCROTCMD
timeout 0.5s $SCROTCMD
sleep 5
rm $temp_file
cp screenshots/telnet/raw/$1 screenshots/telnet/jpg/$1.xwd
convert screenshots/telnet/jpg/$1.xwd screenshots/telnet/jpg/$1.jpg
rm screenshots/telnet/jpg/$1.xwd
echo "done grabbing $1"
