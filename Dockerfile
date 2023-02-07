FROM node:latest
EXPOSE 4000

COPY demo .
CD demo
CMD node demoindex.js
