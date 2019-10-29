## creating a muti build dockerfile to allow NGINX server too in react client

FROM node:alpine as builder
WORKDIR '/app'
COPY ./package.json ./
RUN npm install
COPY . .
RUN npm run build  

## multiple build step herein

FROM nginx
EXPOSE 3000 
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/build /usr/share/nginx/html
## we stuff into /usr/share/nginx/html all static content as per nginx image




