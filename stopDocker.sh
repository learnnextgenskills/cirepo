#!/bin/bash
# Stop all containers
containers=`sudo docker ps -a -q`
if [ -n "$containers" ] ; then
     sudo docker stop $(sudo docker ps -a -q)
fi
