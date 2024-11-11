FROM node:23-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PASSWD=password

EXPOSE 3000

RUN mkdir -p /home/app

WORKDIR /home/app

COPY ./app /home/app

#CMD [ "node", "/home/app/server.js" ]
CMD ["npm", "start"]