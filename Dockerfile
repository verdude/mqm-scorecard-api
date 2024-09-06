FROM node:16 AS builder
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN npm run build

FROM node:16
WORKDIR /usr/src/app
COPY --from=builder /usr/src/app/dist ./dist
EXPOSE 8081
CMD ["node", "index.js"]
