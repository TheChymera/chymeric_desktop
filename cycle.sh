#for i in ~/datasrc/wallpaper-art/original/*{png,jpg}; do
for i in ~/datasrc/wallpaper-art/original/*jpg; do
	echo $i
	#swaymsg output "eDP-1" bg ${i} fill
	swaymsg output "DP-1" bg ${i} fill
	read key <&1
	if [ "$key" = q ] ; then
		break
	fi
done
#swaymsg output "eDP-1" bg ~/datasrc/wallpaper-art/original/ivan_aivazovsky-calm_seas_1884.png fill
