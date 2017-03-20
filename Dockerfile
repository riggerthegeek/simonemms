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

# Environment variables
ENV GHOST_LOCAL_PORT=9999
ENV GHOST_SQLITE_DB=/opt/app/content/data/ghost.db
ENV GHOST_SQLITE_DEBUG=true
ENV GHOST_URL="http://localhost:9999"

# Install the dependencies
RUN npm install

USER node

# Expose the port
EXPOSE 9999

# Run run run
CMD npm start
