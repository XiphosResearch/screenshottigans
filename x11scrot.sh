#!/bin/bash
#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "use: $0 ip_address"
    exit 0;

fi
echo "screenshooting $1"
timeout 5s xwd -root -screen -silent -display $1:0 > screenshots/x11/raw/$1
cp screenshots/x11/raw/$1 screenshots/x11/jpg/$1.xwd
convert screenshots/x11/jpg/$1.xwd screenshots/x11/jpg/$1.jpg
rm screenshots/x11/jpg/$1.xwd
echo "done grabbing $1"

