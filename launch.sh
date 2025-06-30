


#kill existing polybars
killall -q polybar

#wait until the process has been shutdown
while pgrep -x polybar >/dev/null; do sleep 1; done

#launch polybar
polybar main -c $HOME/.config/i3/polybar.ini
