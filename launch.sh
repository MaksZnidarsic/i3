


killall -q polybar
while pgrep -x polybar >/dev/null; do sleep 1; done

polybar main -c $HOME/.config/i3/polybar.ini
