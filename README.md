# screenshottigans
Screenshot Shenanigans - Scripts written for making screenshots of things like Telnet, RDP, VNC.  
All largely written in Bash, because reasons.  
See the notes below for each tool. This repo is going to undergo a lot of changes/updates, and probably will never reach a stable release, so caveat emptor.

First run setup_dirs.sh to create the output directory structure.

## rdpscrot.sh  
Requires:  
- xwd  
- rdesktop (rdesktop-vrdp on my box)
- bash
- ImageMagick 'convert'

Use:  
`./rdpscrot.sh 10.10.10.10`

What it does?  
It creates a RDP connection to the target and takes a screenshot of it. Raw screenshots are stored in screenshots/rdp/raw directory. It then converts it to a JPG file in screenshots/rdp/jpg.

Parallel Use:  
`cat iplist.txt | parallel -j 20 ./rdpscrot.sh `

Known Bugs:  
None yet. Probably loads.

## vncscrot.sh  
Requires:  
- xwd  
- vncviewer  
- bash  
- ImageMagick 'convert'  

Use:  
`./vncscrot.sh 10.10.10.101  

What it does?  
It creates a VNC connection to the target and takes a screenshot of it. Raw screenshots are stored in screenshots/vnc/raw directory. It then converts to a JPG file in screenshots/vnc/jpg.  

Parallel use:   
`cat iplist.txt | parallel -j 20 ./vncscrot.sh `  

## tnscrot.sh  
Requires:  
- xwd  
- xfce4-terminal (will replace with xterm sometime...)  
- bash  
- ImageMagick 'convert'  
- parallel

Use:  
`./tnscrot.sh 10.10.10.101 `  

What it does?  
It pops open a terminal window, opens a telnet connection to the target, waits a bit, and takes a screenshot. Raw screenshots are stored in screenshots/telnet/raw directory. It then converts to a JPG file in screenshots/telnet/jpg.  

Parallel use:  
`cat iplist.txt | parallel -j 20 ./tnscrot.sh`

## TODO (sometime never lol)  
- Add x3270 screenshooter (mainframes!)  
- Add ftp screenshooter  
- Add basic (Chrome based) HTTP/S screenshooter.  
- Add X11 screenshooter  
- Add a 'port' argument to the tools.
- Write a nmap output parser for automation.
- Add option/tools for automatic brute forcing of services requiring credentials.  
- Add option to pass credentials and auto-enter credentials (using 'expect' scripts...)
- Add other interesting services (databases, SSH, samba, etc) at some point.

## Why?  
Because mass screenshooting stuff is fun, and also, this toolset is incredibly handy for getting screenshots of large amounts of shit very fast for report writing while doing pentests and stuff. Way handier than manually entering shit and doing stuff slowly. Also, I personally find scrolling a dir of screenshots of stuff is super quick way to do triage.
