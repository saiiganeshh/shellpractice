#!/bin/bash
START_TIME=$(date +%s)

echo "script executed at:: $START_TIME"

sleep 10

END_TIME=$(date +%s)

TOTAl_TIME=$(($END_TIME-$START_TIME))

echo "script executed at:: $TOTAL_TIME" seconds