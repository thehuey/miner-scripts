#!/bin/sh
for i in $(lspci -D |grep VGA |grep AMD |cut -f 1 -d' '|cut -f 1 -d'.'); do echo $(ls -l1d --time-style=+%Y /sys/class/drm/card? |grep $i |cut -f 7 -d ' '); done
