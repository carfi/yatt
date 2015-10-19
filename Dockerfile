FROM digitallyseamless/nodejs-bower-grunt:latest

MAINTAINER Davide Carfi <davide@carfi.org>

WORKDIR /home/yatt

COPY . /home/yatt

RUN npm install && grunt

EXPOSE 9000

CMD ["node", "server/yatt.js"]
