#/bin/sh
lvl=$( echo "$1 * 2.5" | bc | awk '{printf("%d\n", $1)}' )
echo "Setting fans to: $1% Value: $lvl"
for i in $(lspci -D |grep VGA |grep AMD |cut -f 1 -d' '|cut -f 1 -d'.'); 
do 
 card=$(ls -l1d /sys/class/drm/card? |grep $i |cut -f 9 -d ' ') 
 echo "Card $card"
 mondir=$(ls -l1d $card/device/hwmon/hwmon? | cut -f 9 -d ' ')
 echo $mondir
 echo 1 > $mondir/pwm1_enable
 echo "$lvl" > $mondir/pwm1
done


#echo 1 > /sys/class/drm/card0/device/hwmon/hwmon1/pwm1_enable
#echo "$lvl" > /sys/class/drm/card0/device/hwmon/hwmon1/pwm1
#echo 1 > /sys/class/drm/card1/device/hwmon/hwmon2/pwm1_enable
#echo "$lvl" > /sys/class/drm/card1/device/hwmon/hwmon2/pwm1
#echo 1 > /sys/class/drm/card2/device/hwmon/hwmon3/pwm1_enable
#echo "$lvl" > /sys/class/drm/card2/device/hwmon/hwmon3/pwm1
#echo 1 > /sys/class/drm/card3/device/hwmon/hwmon4/pwm1_enable
#echo "$lvl" > /sys/class/drm/card3/device/hwmon/hwmon4/pwm1
