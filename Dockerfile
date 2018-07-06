FROM node:8.11.3

ENV PORT=8080

# Create app directory
WORKDIR /usr/src/loglevel-blog

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]