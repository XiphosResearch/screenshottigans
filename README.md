# screenshottigans
Screenshot Shenanigans - Scripts written for making screenshots of things like Telnet, RDP, VNC.  
All largely written in Bash, because reasons.  
See the notes below for each tool. This repo is going to undergo a lot of changes/updates, and probably will never reach a stable release, so caveat emptor.

## rdpscrot.sh
Requires:
- xwd  
- rdesktop (rdesktop-vrdp on my box)
- bash
- ImageMagick 'convert'

Use:
`./rdpscrot.sh 10.10.10.10`

What it does?
It creates a RDP connection to the target and takes a screenshot of it. Raw screenshots are stored in rdp_screenshots_raw directory. It then converts it to a JPG file in rdp_screenshots_jpg.

Parallel Use:
`cat iplist.txt | parallel -j 20 ./rdpscrot.sh `

Known Bugs:
None yet. Probably loads.

