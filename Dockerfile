FROM binhex/arch-base:2015111200
MAINTAINER binhex

# additional files
##################

# add supervisor conf file for app
ADD *.conf /etc/supervisor/conf.d/

# add install bash script
ADD install.sh /root/

# install app
#############

# make executable and run bash scripts to install app
RUN chmod +x /root/install.sh && \
	/bin/bash /root/install.sh

# docker settings
#################

# map /config to host defined config path (used to store configuration from app)
VOLUME /config

# map /media to host defined media path (used to read/write to media library)
VOLUME /media

# expose port for server
EXPOSE 8096

# set environment variables for user nobody
ENV HOME /home/nobody

# run supervisor
################

# run supervisor
CMD ["supervisord", "-c", "/etc/supervisor.conf", "-n"]