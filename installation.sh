#!/bin/bash
USERID=$( id -u)

If [ $USERID -ne 0 ]; then

echo "Run as root user"

exit 1

else

echo "Script started"