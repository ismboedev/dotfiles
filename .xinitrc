[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

dbus-update-activation-environment --systemd DISPLAY

sxhkd &
exec bspwm
