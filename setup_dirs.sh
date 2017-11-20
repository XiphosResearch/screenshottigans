#!/bin/bash
echo "Making Directories..."
if [ ! -d "screenshots" ];
  then
    mkdir screenshots
fi
echo "First, the RDP directories..."
if [ ! -d "screenshots/rdp/raw" ]; 
  then
    mkdir -p screenshots/rdp/raw
fi
if [ ! -d "screenshots/rdp/jpg" ]; 
  then
    mkdir -p screenshots/rdp/jpg
fi
echo "Now for VNC directories..."
if [ ! -d "screenshots/vnc/raw" ]; 
  then
    mkdir -p screenshots/vnc/raw
fi
if [ ! -d "screenshots/vnc/jpg" ]; 
  then
    mkdir -p screenshots/vnc/jpg
fi
echo "Now for FTP directories..."
if [ ! -d "screenshots/ftp/raw" ]; 
  then
    mkdir -p screenshots/ftp/raw
fi
if [ ! -d "screenshots/ftp/jpg" ]; 
  then
    mkdir -p screenshots/ftp/jpg
fi
echo "Now for X11 directories..."
if [ ! -d "screenshots/x11/raw" ]; 
  then
    mkdir -p screenshots/x11/raw
fi
if [ ! -d "screenshots/x11/jpg" ]; 
  then
    mkdir -p screenshots/x11/jpg
fi
echo "Now for telnet directories..."
if [ ! -d "screenshots/telnet/raw" ]; 
  then
    mkdir -p screenshots/telnet/raw
fi
if [ ! -d "screenshots/telnet/jpg" ]; 
  then
    mkdir -p screenshots/telnet/jpg
fi
if [ ! -d "screenshots/telnet/text" ]; 
  then
    mkdir -p screenshots/telnet/text
fi
echo "Now for mainframe directories..."
if [ ! -d "screenshots/3270/raw" ]; 
  then
    mkdir -p screenshots/3270/raw
fi
if [ ! -d "screenshots/3270/jpg" ]; 
  then
    mkdir -p screenshots/3270/jpg
fi
echo "done..."
