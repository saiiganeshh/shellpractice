#!/bin/bash
START_TIME=$(date +%s)

echo "script executed at:: $START_TIME"

sleep 10

END_TIME=$(date +%s)

echo "script executed at:: $END_TIME"


TOTAl_TIME=$(($END_TIME-$START_TIME))

echo "script executed in:: $TOTAL_TIME" seconds