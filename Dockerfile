FROM node:15

USER 1001                                                        

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8000
EXPOSE 3001

CMD [ "npm", "start" ]
