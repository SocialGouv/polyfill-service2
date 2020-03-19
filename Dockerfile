FROM node:13

WORKDIR /app

COPY ./polyfill-service/package.json ./polyfill-service/package-lock.json /app/

RUN npm ci

COPY ./polyfill-service/ /app

ENV NODE_ENV production
ENV WEB_MEMORY 1024

ENTRYPOINT ["npm", "start"]
