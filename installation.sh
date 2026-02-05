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

dnf install mysql -y

if [ $? -ne 0 ]; then

echo "MYSQL installtion .... FAILURE"
exit 1

else

echo "MYSQL installion ...Success"

fi

dnf install nodejs -y

if [ $? -ne 0 ]; then

echo "Node js installtion .... FAILURE"
exit 1

else

echo "Node js installion ...Success"

fi
