


killall -q polybar
while pgrep -x polybar >/dev/null; do sleep 1; done

echo main > $HOME/.config/i3/polybar/cache
polybar main -c $HOME/.config/i3/polybar/polybar.ini
