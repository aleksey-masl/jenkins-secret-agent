FROM node:8.9-alpine
USER root
WORKDIR /opt/app
COPY index.js .
COPY package.json .
RUN npm install --only-production
EXPOSE 3050
CMD ["node", "index.js"]