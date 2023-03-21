FROM node:alpine
ENV METHOD chacha20
ENV KEY 170826
ENV PORT 80
WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
EXPOSE 80
CMD [ "npm", "start" ]