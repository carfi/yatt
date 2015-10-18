FROM node:latest

MAINTAINER Davide Carfi <davide@carfi.org>

WORKDIR /home/yatt

COPY . /home/yatt

RUN npm install -g grunt-cli bower \
    && apt-get -y update \
    && apt-get -y install ruby-compass rubygems \
    && gem update --system \
    && gem install compass \
    && grunt

EXPOSE 9000

CMD ["node", "server/yatt.js"]
