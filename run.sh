#!/bin/env bash

Xephyr :1 -ac -br -noreset -screen 800x600 &
sleep 1

if [ "$1" = "debug" ]; then
    DISPLAY=:1.0 gdb build/dwm
else
    DISPLAY=:1.0 build/dwm
fi
