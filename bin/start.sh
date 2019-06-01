#!/bin/bash
#raspistill -w 2592 -h 1944 -rot 180 -ISO 800 -ss 6000000 -br 80 -co 100 -o out.jpeg
/etc/init.d/nginx start
raspistill -t 0  -v -w 2592 -h 1944 -rot 180 -ISO 800 -ss 1000000 -br 80 -co 100 -o live.jpeg
