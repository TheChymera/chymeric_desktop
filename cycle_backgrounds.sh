if [ -z ${1} ]; then
	DISPLAY_TEXT=$(swaymsg -t get_outputs -p)
	DISPLAY_NAME="${DISPLAY_TEXT##Output }"
	DISPLAY_NAME="${DISPLAY_NAME%% *}"
	echo "You are in caveman mode."
	echo "The first output has been determined to be \`${DISPLAY_NAME}\` based on very basic Bash logic."
	echo "Please check that against \`swaymsg -t get_outputs\` in another terminal to be safe."
else
	DISPLAY_NAME="${1}"
fi

#for i in ~/datasrc/wallpaper-art/original/*jpg; do
echo "Use this script like \`./cycle_backgrounds.sh /path/to/candidates/*substring*\`"
for i in ${*}; do
	echo $i
	swaymsg output "DP-1" bg ${i} fill
	read key <&1
	if [ "$key" = q ] ; then
		break
	fi
done
