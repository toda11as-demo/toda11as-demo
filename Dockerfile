FROM node:latest
WORKDIR /app
COPY /demo/package*.json ./
RUN npm install
COPY /demo .
CMD [ "node", "app.js" ]
EXPOSE 3000
