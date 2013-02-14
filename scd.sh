#!/bin/bash
#
# Uses 'locate' to find the directory you want and 'pushd' to change directories.
#
case "$1" in
	""|"-h"|"--help")
		echo "Smart Change Directory, changes directory by keywords."
		echo "Usage: . scd keyword1 keyword2 ..."
		echo "IMPORTANT: the script must be sourced (the dot before the script name) or else it won't work!"
		echo "If the wrong directory is found, use the 'popd' command to return to the previous directory."
		;;
	*)
		PATTERN=$(printf "%s*" "$@")
		FOUND=$(locate *"$PATTERN")
		for line in $FOUND; do
			if [ -d "$line" ]; then
				pushd "$line"
				break;
			fi
		done
		;;
esac