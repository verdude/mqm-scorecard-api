FROM node:16
WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install --omit=dev --omit=optional --omit=peer --ignore-scripts
RUN npm run build
COPY dist .

EXPOSE 8081
CMD [ "node", "index.js" ]
