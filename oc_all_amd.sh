#!/bin/sh
for i in $(lspci -D |grep VGA |grep AMD |cut -f 1 -d' '|cut -f 1 -d'.'); do 
	cpath=$(ls -l1d --time-style=+%Y /sys/class/drm/card? |grep $i |cut -f 7 -d ' '); 
	echo "OC $cpath"
	oc_amd.sh $cpath/device
done
