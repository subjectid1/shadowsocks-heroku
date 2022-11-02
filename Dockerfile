FROM node:14-slim

# setup okteto message
COPY bashrc /root/.bashrc

WORKDIR /usr/src/app

#ADD package.json .
RUN npm install 

 

EXPOSE 80

CMD npm start
