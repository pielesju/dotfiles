if xrandr | grep -q "DP2-3 connected"; then
	xrandr --output DP2-3 --mode 1920x1080 --output eDP1 --off
else
	xrandr --output eDP1 --mode 1366x768
fi
