#!/bin/sh
#
# call this script (simAHR.sh) to test ahr_stamp (a c-language service)
#

DMMrot="$PWD"
simulate_ahr=$(ahr_stamp 2>&1 | head -n 1)

simulate_new() {
   local sim="$1"
   local i=1
   if echo "$sim" | grep -qi "not found"; then
		echo "Hello World ...$DMMrot"
   else
		echo "You are emancipated ...$DMMrot"
	# segmentation
	for i in $(seq 11 -1 5); do
		str=$(echo "$(ahr_stamp)" | cut -d':' -f2)
		dst=$(echo "$str" | cut -d'.' -f1)
		nst=$(echo "$str" | cut -d'.' -f2)
		printf "%09d" "$i"
		printf "%b \\n" "$dst$nst"
		sleep 0.1
	i=$(($i+1))
	done
   fi
}

simulate_new "$simulate_ahr"

# Praevisio Installer is simulation implementing the ahr_stamp as a service for future projects:
# https://github.com/ahrink/Praevisio-Installer
