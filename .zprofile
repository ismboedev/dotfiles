if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
#	exec startx
	export QT_QPA_PLATFORMTHEME="qt5ct"
fi
