FROM docker.io/node:lts-alpine

WORKDIR /usr/app

COPY src /usr/app/src/

COPY package.json /usr/app/

RUN npm install

CMD ["npm", "start"]