FROM resin/rpi-raspbian:stretch
ENTRYPOINT []


###########################################################
# using curl and git to download pi cam interface binaries
# using netstat to check state of streaming server
# using vim as text editor
# using alsa as sound interface
###########################################################

RUN apt-get update && \  
  apt-get -qy install \
    nginx libraspberrypi-bin vim


################################
# everything will run in /root/
################################

WORKDIR /var/www/html/



#######################################
# copy over the start and stop scripts
#######################################

COPY /bin/start.sh /root/bin/start.sh
#COPY /bin/stop.sh /root/bin/stop.sh
RUN chmod +x /root/bin/start.sh
#RUN chmod +x /root/bin/stop.sh


##############################
# run start script at startup
##############################

CMD ["/root/bin/start.sh"]  
