#!/bin/bash
#set -x
services="tomcat apache2 java"
for i in $services
do
temp=`sudo sysctl $i status`
if [ $? -ne 0 ]
then
echo "$i service is stopped please take some action"
fi
done
