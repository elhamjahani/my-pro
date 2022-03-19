#!/bin/bash

speedtest > /tmp/speedtest.result
	if [[ "$1" == "download" ]]; then
		grep Download /tmp/speedtest.result | awk '{print $2}'	
	elif [[ "$1" == "upload" ]]; then
		grep Upload /tmp/speedtest.result | awk '{print $2}'	
	else
		echo "Use one of { download, upload } "
	fi
