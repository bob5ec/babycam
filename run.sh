#!/bin/bash
#docker run --rm -it --entrypoint=/bin/bash \
docker run --rm -d \
	--device=/dev/vchiq \
	-p 80:80 \
	bob5ec/webcam:latest
