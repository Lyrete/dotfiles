if type "xrandr"; then
	running_bars=$(pgrep polybar)
  if [[ $running_bars ]]; then
	  exit 0
  fi
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload example &
  done
else
  polybar --reload example &
fi
