#!/bin/sh
set -eu

# G util docs:
# script to generate the 'g' script for displaying the available Git utils.

{
	shebang="#!/bin/sh"

	echo "$shebang"
	echo "set -eu"
	echo
	echo "# DO NOT EDIT MANUALLY! THIS UTIL IS GENERATED BY $0"
	echo
	printf "echo \""
	init=false
	for path in bin/g*; do
		[ "$path" = "bin/g" ] && continue
		[ "$init" = "true" ] && printf "\n"
		file=$(basename "$path")
		name=$(sed -n '4s/^# //p' "$path")
		explanation=$(sed -n '5s/^# //p' "$path")

		RED='\033[0;31m'
		NC='\033[0m' # No Color
		printf "%s\t${RED}%s${NC} %s" "$file" "$name" "$explanation"

		init=true
	done
	echo "\""
} > bin/g
