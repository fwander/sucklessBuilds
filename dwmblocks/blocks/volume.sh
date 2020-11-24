#!/bin/sh
out=$(amixer sget Master | awk -F"[][]" '/Left:/ { print $2 }')
str=""
[ $(pacmd list-sinks | grep "muted" | awk '{print $2}') == no ] && str='  '

[ $(pacmd list-sinks | grep "muted" | awk '{print $2}') == yes ] && str='  '
str="\02 ${str} ${out}"
echo -e $str
