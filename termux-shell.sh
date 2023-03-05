#!/bin/bash

IFS=$'\n'
adb devices
adb shell am start -n com.termux/.app.TermuxActivity

echo "---------Termux sterted... probably---------"

while :
do
   echo -n ">> "
   
   read cmnd
   nCmnd=${cmnd//" "/"\ "}
   
   adb shell input text "$nCmnd"
   adb shell input keyevent 66
done
