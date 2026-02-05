#!/bin/bash

USERID=$(id -u)

# Root user check
if [ $USERID -ne 0 ]; then
    echo "Run as root user"
    exit 1
fi

echo "Installing nginx..."
dnf install nginx -y

# Check installation status
if [ $? -ne 0 ]; then
    echo "Installing nginx... FAILURE"
    exit 1
else
    echo "Installing nginx... SUCCESS"
fi
