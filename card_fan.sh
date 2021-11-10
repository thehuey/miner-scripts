#/bin/sh
lvl=$( echo "$2 * 2.55" | bc | awk '{printf("%d\n", $1)}' )
#mon=$( echo "$1 + 1" | bc )
echo "Setting card $1 fan to: $2% Value: $lvl"

#for i in $(lspci -D |grep VGA |grep AMD |cut -f 1 -d' '|cut -f 1 -d'.'); 
#do 
#card=$(ls -l1d /sys/class/drm/card? |grep "card$i" |cut -f 9 -d ' ') 
#echo "Card $card"
#done
card=$(ls -l1d --time-style=+%Y /sys/class/drm/card$1/device/hwmon/hwmon? |cut -f 7 -d ' ')
if [ -z "$card" ]; then
  echo "Directory is empty"
else
  echo "Directory: $card"
  sh -c "echo 1 > $card/pwm1_enable"
  sh -c "echo "$lvl" > $card/pwm1"
fi
