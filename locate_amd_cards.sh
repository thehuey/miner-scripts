#!/bin/sh
if [ $(date +%e) -lt 10 ]; then
  for i in $(lspci -D |grep VGA |grep AMD |cut -f 1 -d' '|cut -f 1 -d'.'); do echo $(ls -l1d /sys/class/drm/card? |grep $i |cut -f 10 -d ' '); done
fi
if [ $(date +%e) -ge 10 ]; then
  for i in $(lspci -D |grep VGA |grep AMD |cut -f 1 -d' '|cut -f 1 -d'.'); do echo $(ls -l1d /sys/class/drm/card? |grep $i |cut -f 9 -d ' '); done
fi
