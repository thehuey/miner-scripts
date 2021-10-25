#!/bin/sh
echo "reverting OC for card in directory $1"
echo 's 0 300 710' > $1/pp_od_clk_voltage
echo 's 1 1450 750' > $1/pp_od_clk_voltage
echo 's 2 2600 890' > $1/pp_od_clk_voltage

echo 'm 0 300 750' > $1/pp_od_clk_voltage
echo 'm 1 1150 800' > $1/pp_od_clk_voltage
echo 'm 2 1350 820' > $1/pp_od_clk_voltage

echo c > $1/pp_od_clk_voltage
