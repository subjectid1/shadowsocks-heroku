FROM node:alpine
ENV METHOD rc4
ENV KEY 170826
ENV PORT 8080
WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]