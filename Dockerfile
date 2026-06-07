FROM node:20-alpine

WORKDIR /app

COPY package.json ./

RUN npm istall

COPY . .

EXPOSE 3001

CMD npx sequelize-cli db:migrate && npm run start

