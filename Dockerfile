########################################
# Docker                               #
#                                      #
# A NodeJS container that enables the  #
# application to run                   #
########################################

FROM node:6

MAINTAINER Simon Emms <simon@slashdevslashnull.it>

# Set the work directory and add the project files to it
WORKDIR /opt/app
ADD . /opt/app

USER node

# Environment variables
ENV DG_LOGGING_STREAMS_STDOUT_ACTIVE=true
ENV DG_LOGGING_STREAMS_STDOUT_LEVEL=info

ENV DG_SERVER_PORT=9999
ENV DB_SERVER_PRETTY_OUTPUT=false

# Install the dependencies

# Expose the port
EXPOSE 9999
EXPOSE 5858

# Run run run
CMD npm start | ./node_modules/.bin/bunyan
