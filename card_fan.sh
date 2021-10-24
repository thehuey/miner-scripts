#/bin/sh
lvl=$( echo "$2 * 2.5" | bc | awk '{printf("%d\n", $1)}' )
mon=$( echo "$1 + 1" | bc )
echo "Setting card $1 fan to: $2% Value: $lvl"
sh -c "echo 1 > /sys/class/drm/card$1/device/hwmon/hwmon$mon/pwm1_enable"
sh -c "echo "$lvl" > /sys/class/drm/card$1/device/hwmon/hwmon$mon/pwm1"
