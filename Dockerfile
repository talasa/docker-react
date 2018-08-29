FROM node:alpine as builder
WORKDIR '/home/node'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx:1.14-alpine
COPY --from=builder /home/node/build /usr/share/nginx/html

