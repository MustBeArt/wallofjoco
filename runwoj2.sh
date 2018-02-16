#!/bin/sh
lxterminal
echo Starting up
cd wallofjoco
sudo rfkill block 2
sudo hciconfig hci0 down
sudo hciconfig hci0 up
echo Running the wall
./wallofjoco.py &
sleep 30
sudo rfkill unblock 2
echo Running trinket control
./trinketctl.py
sleep 10
echo Bye

