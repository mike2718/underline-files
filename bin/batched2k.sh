#!/bin/bash
OIFS="$IFS"
IFS=$'\n'
list=$(find . -type f | shuf)
numleft=$(echo "$list" | wc -l)
for file in $list ; do
	ending=$(echo "$file" | sed 's/\(.*\)\.\(.*\)$/\2/')

	#
	if [ ! -e "$file.sig" ] && [ "$ending" != "par2" ] && [ "$ending" != "sig" ]; then
        /c/Users/Saori/soft/amule_rev.2.3.3_vc143/alcc.exe "$file" >> ed2k-links.txt
	fi
	
	numleft=$((numleft-1))
done
IFS="$OIFS"
