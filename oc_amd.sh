#!/bin/sh
#echo $1
echo 's 0 300 710' > pp_od_clk_voltage
echo 's 1 950 710' > pp_od_clk_voltage
#
echo 'm 0 300 750' > pp_od_clk_voltage
echo 'm 1 1150 800' > pp_od_clk_voltage
echo 'm 2 1350 820' > pp_od_clk_voltage
#
echo c > pp_od_clk_voltage
