#!/bin/bash
# Because I really want cygwin, git commit, and sublime to all get along.

for var in "$@"
do
	echo $var
	if [[ ${var:0:1} == "-" ]]; then
		args="$args $var"
	else
		targetfile=$(cygpath -wa "$var")
		filenames="$filenames $targetfile"
	fi
done

$HOME/bin/subl $args $filenames