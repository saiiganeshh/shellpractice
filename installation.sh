#!/bin/bash
userid=$( id -u)

if [ $userid -ne 0 ]; then

echo "run as root user"

exit 1

fi

echo "installing nginx"

dnf install nginx -y

if [ $? -ne 0 ]; then

echo "Nginx installtion .... FAILURE"
exit 1

else

echo "Nginx installion ...Success"

fi
