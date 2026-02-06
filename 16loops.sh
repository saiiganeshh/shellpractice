#!/bin/bash
user=$(id -u)
if [ $user -ne 0 ]; then
echo "Run as root user"
exit 1
fi

VALIDATE() {

    if [ $1 -ne 0 ]; then

    echo "$2 .... FAILURE"
    exit 1

    else

    echo "$2 ..... SUCCESS"

    fi
}



for package in "$@"

do 

dnf list installed "$package" &>/dev/null


if [ $? -ne 0 ]; then 

echo "$package is not installed installing"

dnf install $package  -y

VALIDATE $? "$package installing"

else

echo "$package is installed skipping"

fi 

done




