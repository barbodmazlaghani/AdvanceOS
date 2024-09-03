#!/bin/bash

echo "Please enter the process name:"
read process_name

pids=$(ps aux | grep $process_name | grep -v grep | awk '{print $2}')


if [ -z "$pids" ]; then
    echo "No process named $process_name is currently running."
    exit 1
fi

echo "Process Name  PID  Port  Protocol"

for pid in $pids; do
    lsof -Pan -p $pid -i | awk -v process=$process_name -v pid=$pid 'NR>1 {split($9,a,":"); split(a[2],b,"->"); printf("%s       %s %s %s\n", process, pid, b[1], $8)}'
done
