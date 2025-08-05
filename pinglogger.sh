#!/usr/bin/env bash

logfile="log.txt"
target="google.com"
sleep_timer=60

if [ -n "$1" ]; then
    target=$1
fi
if [ -n "$2" ]; then
    sleep_timer=$2
fi

while :; do
    date=$(date "+%Y-%m-%d %H:%M:%S")
    ping -c 3 $target > /dev/null
    status=$?
    case $status in
        0)
            echo "$date: Good" >> $logfile
            ;;
        *)
            echo "$date: Bad ($status)" >> $logfile
            ;;
    esac
    sleep $sleep_timer
done
