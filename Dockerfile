# Build stage 1: Build Image

FROM node:12-alpine AS build
WORKDIR /usr/src/app
COPY . .
RUN npm install --production
ENV PORT 5005
EXPOSE 5005
CMD [ "npm", "start" ]
