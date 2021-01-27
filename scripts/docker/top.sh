#!/bin/sh

CONTAINER_ID=$1
if test -z "$CONTAINER_ID" 
then
	echo "ERROR: Please enter a container
 id"
	echo "Exiting"
	exit 1
fi

docker container top $CONTAINER_ID
