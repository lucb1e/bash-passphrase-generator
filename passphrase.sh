#!/usr/bin/env bash
cpus=`cat /sys/devices/system/cpu/possible | tr "-" " " | awk '{print $2}'`;
while :; do
	let i=0;
	while [ $i -lt $(($cpus)) ]; do
		bash randomword.sh &
		let i=$i+1;
	done;
	sleep 0.1;
	bash randomword.sh;
done;
