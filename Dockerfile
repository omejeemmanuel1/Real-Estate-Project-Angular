FROM node:14

WORKDIR /app

COPY package*.json ./

RUN npm install -g @angular/cli

COPY . .

RUN ng serve