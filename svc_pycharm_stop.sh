#!/bin/sh
#stop process
n=$HOSTNAME
SERVICE='PYCHARM'
#PID=`ps -ef | grep $SERVICE | grep -v grep | awk '{print $2}' | sed 1q`
PID=`ps -ef | grep $SERVICE | grep -v grep | awk '{print $2}'`
if [ "" != "$PID" ]
then
	echo "Killing the $SERVICE ... PID is $PID"
	kill -9 $PID
else
	echo "$SERVICE is not running"
fi
