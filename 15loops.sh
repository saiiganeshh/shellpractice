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


for package in "$@"
do
dnf list installed $package
if [ $? -ne 0 ]; then 
echo " $package is not instahhed installing now"
dnf install $package -y
VALIDATE $? "installing $package"

else
echo "$package already installed skipping now"
fi
done
