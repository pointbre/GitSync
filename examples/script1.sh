#!/bin/sh

# EXAMPLE FOR A "CUSTOM_START_SCRIPT" FOR GITSYNC:

# verify permissions
if test -x ./.git/config; then
	echo "WARNING: wrong permissions detected! Correcting ..."
	chmod -R a-x+X ./
	chmod a+x gitsync
	chmod a+x script*
	echo "done."
	echo "---------------------------------------"
fi

# if system is linux, use emacs editor for committing changes
if [ `uname -o` = "GNU/Linux" ]; then
	export EDITOR=emacs
fi
