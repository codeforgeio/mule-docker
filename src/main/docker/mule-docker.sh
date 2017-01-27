#!/bin/bash

# Script to check that Mule is installed and start mule

# Check that mule distribution is available 
PATTERN_DIS=(/opt/mule/distro/mule-standalone-*.zip)
if 	[[ -f ${PATTERN_DIS[0]} ]] 
then
	# Lets check that mule is not already installed
	if [[ ! -d /opt/mule/mule-standalone ]]
	then
		echo "Found Mule Distribution, Extracting..."
		unzip ${PATTERN_DIS[0]} -d /opt/mule
		PATTERN_DIR=(/opt/mule/mule-standalone-*)
		mv ${PATTERN_DIR[0]} /opt/mule/mule-standalone
	fi
	
	echo "Starting mule..."
	/opt/mule/mule-standalone/bin/mule
	
else
	echo "Can not start container, Mule distribution is missing..."
fi