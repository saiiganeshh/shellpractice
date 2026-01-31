#!/bin/bash
START_TIME=$(date +%s)

echo "script executed at:: $START_TIME"

sleep 10

END_TIME=$(date +%s)

Total_time=$(($END_TIME-$START_TIME))

echo "script executed at:: $END_TIME" seconds