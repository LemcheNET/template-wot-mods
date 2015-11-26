#!/bin/sh

if [ -f delme.txt ]; then
	rm -f delme.txt
fi

CURRENT_VERSION=0.9.12
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
for folder in {nfd-wot-mods,res,res_mods/configs,res_mods/mods,res_mods/ModSettings,res_mods/${CURRENT_VERSION}}; do
	for d in $($USERPROFILE/bin/find.exe $folder -type d); do
		echo "    RMDir \"\$INSTDIR\\$d\"" >> delme.txt
	done
	for f in $($USERPROFILE/bin/find.exe $folder -type f); do
		echo "    Delete \"\$INSTDIR\\$f\"" >> delme.txt
	done
done
IFS=$SAVEIFS

tac delme.txt | sed 's/\//\\/g' > file_and_directory_list.txt

rm -f delme.txt
