


cache=$HOME/.config/i3/polybar/cache
current=$(cat $cache)

bars=("main" "detail" "off")
for ((x = 0; x < ${#bars[@]}; x++)); do
    if [ ${bars[$x]} = $current ]; then
        echo ${bars[$[ ($x + 1) % ${#bars[@]} ]]} > $cache
    fi
done

killall -q polybar
polybar $(cat $cache) -c $HOME/.config/i3/polybar/polybar.ini
