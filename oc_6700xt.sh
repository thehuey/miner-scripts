#!/bin/sh
#echo $1
echo "setting OC for card in directory $1"
echo 's 0 300 700' > $1/pp_od_clk_voltage
echo 's 1 1250 710' > $1/pp_od_clk_voltage
#
echo 'm 0 300 700' > $1/pp_od_clk_voltage
echo 'm 1 1075 850' > $1/pp_od_clk_voltage
#
echo c > $1/pp_od_clk_voltage
