FROM node:8

RUN apt-get install git wget brotli -y

RUN npm install -g @sentry/cli --unsafe-perm

RUN wget https://storage.googleapis.com/pub/gsutil.tar.gz
RUN tar xfz gsutil.tar.gz -C $HOME
RUN export PATH=${PATH}:$HOME/gsutil
