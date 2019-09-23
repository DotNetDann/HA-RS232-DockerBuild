#!/bin/bash
#if (( $(ps -ef | grep -v grep | grep socat | wc -l) > 0 ))
if (pgrep -x "socat" > /dev/null)
then
	echo "Socat already running!!!"
else
	echo "Starting Socat"
	#http://www.dest-unreach.org/socat/doc/socat.html#OPTION_REUSEADDR
	socat pty,link=/dev/ttyV0,waitslave tcp:192.168.x.x:10000,keepalive,forever,keepidle=10,keepintvl=10 &
	#socat pty,link=/dev/ttyV0,waitslave tcp:192.168.x.x:10000,reuseaddr,keepalive,keepidle=10,keepintvl=10,keepcnt=100,ignoreeof &
	#socat pty,link=/dev/ttyV0,waitslave tcp:192.168.x.x:10000 &
	#socat -d -d pty,link=/dev/CUSTOMNAME,raw,echo=0,waitslave tcp:192.168.x.x:yyyy;
fi
