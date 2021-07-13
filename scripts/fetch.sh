#!/bin/bash

cols=$(tput cols)
width=$(expr $cols - 2) 
mar=1
contentwidth=$(expr $width - 9)

repeat(){
	local start=1
	local end=${1:-80}
	local str="${2:-=}"
	local range=$(seq $start $end)
	for i in $range ; do echo -n "${str}"; done
}

padding=$(repeat $(expr $contentwidth - 1) ' ')
echo ""
repeat $mar ' '; echo -n
echo -n ╔
repeat 6 '═'; echo -n
echo -n ╦
repeat $contentwidth '═'; echo -n
echo ╗

repeat $mar ' '; echo -n
echo -n -e "║ host ║ "
cat=$(cat /etc/hostname)
printf "%s%s%s\n" "$cat" "${padding:${#cat}}" "║"

repeat $mar ' '; echo -n
echo -n -e "║ user ║ "
who=$(whoami)
printf "%s%s%s\n" "$who" "${padding:${#who}}" "║"

repeat $mar ' '; echo -n
echo -n -e "║ pkgs ║ "
pac=$(pacman -Q | wc -l)
printf "%s%s%s\n" "$pac" "${padding:${#pac}}" "║"

repeat $mar ' '; echo -n
echo -n -e "║ osvn ║ "
dist=$(uname -r)
printf "%s%s%s\n" "$dist" "${padding:${#dist}}" "║"

repeat $mar ' '; echo -n
echo -n -e "║ fcnt ║ "
list=$(ls -liah | wc -l)
printf "%s%s%s\n" "$list" "${padding:${#list}}" "║"

repeat $mar ' '; echo -n
echo -n -e "║ size ║ "
size=$(du -s -h /home/julian | tr -d '[:space:]')
size=${size%%/*}
printf "%s%s%s\n" "$size" "${padding:${#size}}" "║"

repeat $mar ' '; echo -n
echo -n -e "║ powr ║ "
pow=$(acpi)
pow=${pow#*: }
pow=${pow//remaining/}
printf "%s%s%s\n" "$pow" "${padding:${#pow}}" "║"

repeat $mar ' '; echo -n
echo -n -e "║ inet ║ "
con=$(nmcli device status | grep wlan0 | grep -v "^p2p" | tr -s ' ')
con=${con#*i }
printf "%s%s%s\n" "$con" "${padding:${#con}}" "║"

repeat $mar ' '; echo -n
echo -n -e "║ svol ║ "
vol=$(pactl list sinks | grep '^[[:space:]]Volume:')
vol=${vol#*/ }
vol=${vol%%/*}
printf "%s%s%s\n" "$vol" "${padding:${#vol}}" "║"

repeat $mar ' '; echo -n
echo -n -e "║ wspc ║ "
spc=$(i3-msg -t get_workspaces \ | jq '.[] | select(.focused==true).name')
spc=${spc#*\"}
spc=${spc%\"}
printf "%s%s%s\n" "$spc" "${padding:${#spc}}" "║"

repeat $mar ' '; echo -n
echo -n -e "║ time ║ "
date=$(date)
printf "%s%s%s\n" "$date" "${padding:${#date}}" "║"

repeat $mar ' '; echo -n
echo -n ╚
repeat 6 '═'; echo -n
echo -n ╩
repeat $contentwidth '═'; echo -n
echo -n ╝
echo ""
echo ""
