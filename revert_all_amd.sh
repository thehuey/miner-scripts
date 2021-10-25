#!/bin/sh
for i in $(lspci -D |grep VGA |grep AMD |cut -f 1 -d' '|cut -f 1 -d'.'); do 
	cpath=$(ls -l1d /sys/class/drm/card? |grep $i |cut -f 9 -d ' '); 
	echo "OC $cpath"
	revert_amd.sh $cpath/device
done
