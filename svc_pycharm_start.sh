#!/bin/sh
#start process
n=$HOSTNAME
echo "Hostname ==> $n"

if [ "$n" = "onkar-VirtualBox" ]
then
	env="E1"
fi


if [ "$n" = "onkar-VirtualBox2" ]
then
	env="E2"
fi

if [ "$n" = "onkar-VirtualBox2" ] || [ "$n" = "onkar-VirtualBox2" ]
then
	env="E3"
fi

export $env
echo $env
SERVICE='pycharm'
if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
	echo "$SERVICE already running"
else
	echo "$SERVICE is starting"
	/home/onkar/pycharm/bin/pycharm.sh > /home/onkar/pycharm/log/pycharm.log 2>&1 & 
	echo "Application started"
fi
exit 0
