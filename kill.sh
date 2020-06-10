#!/bin/bash
for param in "$@"
do
echo "Kill borej-$param"
kill $(pgrep -a appsrv | grep borej-$param/ | awk '{print $1}')
done
exit 0
