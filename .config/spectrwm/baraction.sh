#!/bin/bash
# baraction.sh for spectrwm status bar

## DISK
hdd() {
  hdd="$(df -h /home | awk 'NR==2{print $3, $5}')"
  echo -e "HDD: $hdd"
}

## RAM
mem() {
  mem=`free | awk '/Mem/ {printf "%dM/%dM\n", $3 / 1024.0, $2 / 1024.0 }'`
  echo -e "MEM: $mem"
}

## CPU
cpu() {
  read cpu a b c previdle rest < /proc/stat
  prevtotal=$((a+b+c+previdle))
  sleep 0.5
  read cpu a b c idle rest < /proc/stat
  total=$((a+b+c+idle))
  cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))
  echo -e "CPU: $cpu%"
}

## VOLUME
vol() {
    vol=`amixer get Master | awk -F'[][]' 'END{ print $4":"$2 }' | sed 's/on://g'`
    echo -e "VOL: $vol"
}

## Hijri date
hijri() {
    hijri=`/usr/bin/date -d $(python /home/annahri/.local/bin/hijri) +'%d-%m-%Y'`
    echo -e "${hijri}H"
}

SLEEP_SEC=3
#loops forever outputting a line every SLEEP_SEC secs

# It seems that we are limited to how many characters can be displayed via
# the baraction script output. And the the markup tags count in that limit.
# So I would love to add more functions to this script but it makes the 
# echo output too long to display correctly.

# format_cpu="+@fg=1; +@fn=1;💻+@fn=0; $(cpu) +@fg=0;"
# format_mem="+@fg=2; +@fn=1;💾+@fn=0; $(mem) +@fg=0;"
# format_hdd="+@fg=3; +@fn=1;💿+@fn=0; $(hdd) +@fg=0;"
# format_vol="+@fg=4; +@fn=1;🔈+@fn=0; $(vol) +@fg=0;"
# format_hijri="+@fg=5; +@fn=1;🔈+@fn=0; $(hijri) +@fg=0;"

format_cpu="💻 $(cpu)"
format_mem="💾 $(mem)"
format_hdd="💿 $(hdd)"
format_vol="🔈 $(vol)"
format_hijri="$(hijri)"

while :; do
    echo "$format_cpu | $format_mem | $format_hdd | $format_vol | $format_hijri"
	sleep $SLEEP_SEC
done

