#!/bin/bash
WDIR="$1"
cd "$WDIR"
if [ "$2" ] ; then
	find -type f -exec tail -n1 {} + | grep "#FIXME"
fi	
