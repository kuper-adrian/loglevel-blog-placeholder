FROM node:8.11.3

ARG environment=development

ENV PORT=8080
ENV NODE_ENV=${environment}}

# Create app directory
WORKDIR /usr/src/loglevel-blog

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]