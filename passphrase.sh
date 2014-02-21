#!/usr/bin/env bash
# Run a couple searches at once since it's pretty badly written, err, cpu intensive.
cpus=`cat /sys/devices/system/cpu/possible | tr "-" " " | awk '{print $2}'`;
while :; do
	let i=0;
	while [ $i -lt $cpus ]; do
		bash randomword.sh &
		let i=$i+1;
	done;
	sleep 0.1;
	bash randomword.sh; # This way it finishes right about when the others do as well
done;
