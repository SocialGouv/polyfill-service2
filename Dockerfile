FROM node:11

WORKDIR /app

COPY ./polyfill-service/package.json ./polyfill-service/package-lock.json /app/

RUN npm ci --prodution

COPY ./polyfill-service/start_server.sh /app/

ENV NODE_ENV production
ENV WEB_MEMORY 1024

ENTRYPOINT ["start_server.sh"]
