FROM node:12

WORKDIR /app

COPY ./polyfill-service/package.json ./polyfill-service/package-lock.json /app/

RUN npm ci --prodution

COPY ./polyfill-service/about.json ./polyfill-service/start_server.sh /app/
COPY ./polyfill-service/server /app/server
COPY ./polyfill-service/dist /app/dist

ENV NODE_ENV production
ENV WEB_MEMORY 1024

ENTRYPOINT ["npm", "start"]
