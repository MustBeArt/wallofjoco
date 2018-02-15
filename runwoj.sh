#!/bin/sh
cd wallofjoco
sudo rfkill block 2
./wallofjoco.py &
sleep 10
sudo rfkill unblock 2
#lxterminal -e ./trinketctl.py
lxterminal

