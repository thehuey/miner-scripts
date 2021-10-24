#/bin/sh
lvl=$( echo "$1 * 2.5" | bc | awk '{printf("%d\n", $1)}' )
echo "Setting fan to: $1% Value: $lvl"
echo 1 > /sys/class/drm/card0/device/hwmon/hwmon1/pwm1_enable
echo "$lvl" > /sys/class/drm/card0/device/hwmon/hwmon1/pwm1
echo 1 > /sys/class/drm/card1/device/hwmon/hwmon2/pwm1_enable
echo "$lvl" > /sys/class/drm/card1/device/hwmon/hwmon2/pwm1
echo 1 > /sys/class/drm/card2/device/hwmon/hwmon3/pwm1_enable
echo "$lvl" > /sys/class/drm/card2/device/hwmon/hwmon3/pwm1
echo 1 > /sys/class/drm/card3/device/hwmon/hwmon4/pwm1_enable
echo "$lvl" > /sys/class/drm/card3/device/hwmon/hwmon4/pwm1
