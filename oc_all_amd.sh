#!/bin/sh
for i in $(lspci -D |grep VGA |grep AMD |cut -f 1 -d' '|cut -f 1 -d'.'); do 
	cpath=$(ls -l1d /sys/class/drm/card? |grep $i |cut -f 9 -d ' '); 
	if [ $(date +%e) -lt 10 ]; then
		cpath=$(ls -l1d /sys/class/drm/card? |grep $i |cut -f 10 -d ' '); 
	fi
	echo "OC $cpath"
	oc_amd.sh $cpath/device
done
