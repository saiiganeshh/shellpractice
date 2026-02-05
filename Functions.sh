#!/bin/bash
user=$(id -u)

if [ $user -ne 0 ]; then

echo " run as root user"
exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then 
    echo "$2 .... FAILURE"

    exit 1

    else
    echo "$2 .... SUCCESS"
    fi
}


dnf install nginx -y

VALIDATE $? "installing nginx"
dnf install mysql -y
VALIDATE $? "installing mysql"
dnf install nodejs -y
VALIDATE $? "installing nodejs"




