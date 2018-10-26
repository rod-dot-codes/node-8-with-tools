FROM node:8

RUN apt-get install git -y
RUN npm install -g @sentry/cli --unsafe-perm
