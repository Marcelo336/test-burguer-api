FROM node:20-alpine

RUN apk update && apk upgrade && apk add --no-cache bash

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install
 
COPY . .

EXPOSE 3001

CMD ["sh", "-c", "npx sequelize-cli db:migrate && npm run start"]

