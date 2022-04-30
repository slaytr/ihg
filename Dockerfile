# Dockerfile
FROM node:16-alpine
RUN apk update && apk upgrade
RUN apk add git
RUN apk add nano
RUN npm i -g nuxt
