#!/bin/sh

INSTANCE_ID=$1
if test -z "$INSTANCE_ID" 
then
	echo "ERROR: Please enter an instance id"
	echo "Exiting"
	exit 1
fi

docker inspect --format='{{range $p, $conf := .NetworkSettings.Ports}} {{$p}} -> {{(index $conf 0).HostPort}} {{end}}' $INSTANCE_ID
