FROM node:6.2.2

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD COPY package.json /usr/src/app/
ONBUILD RUN npm install --production
ONBUILD COPY . /usr/src/app

ONBUILD RUN npm run deploy

EXPOSE 3000 8000

VOLUME /www
