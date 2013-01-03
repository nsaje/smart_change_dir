smart_change_dir
================

Change directories via keywords.

Uses _locate_ to find the directory you want and _pushd_ to change directories.

#Installation
	chmod a+x /path/to/scd.sh
	sudo ln -s /usr/bin/scd /path/to/scd.sh

#Usage
	. scd keyword1 keyword2 ...

*IMPORTANT*: the script must be sourced (the dot before the script name) or else it won't work!

If the wrong directory is found, use the _popd_ command to return to the previous directory.