#!/usr/bin/env bash
# loose interpretation of http://stackoverflow.com/a/11784334/1201863
let i=0;
while read line; do
	# work around (rounded/floored) integer limitations
	if [ $(($RANDOM*32000*$i/32000)) -lt 32000 ]; then
		chosen="$line";
		chosenn=$i;
	fi;
	let i=$i+1;
done < /usr/share/dict/words;
echo -n "$chosen ";
#echo $chosenn;
