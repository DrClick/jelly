### Stage 1 dev
FROM node:latest as dev
EXPOSE 4200
LABEL author="Thomas Watson"
RUN npm install -g @angular/cli
COPY app .
WORKDIR /app/toast
RUN npm install d3

CMD ["ng", "serve", "--host", "0.0.0.0"]

### Stage 2 building
FROM node:latest as node
LABEL author="Thomas Watson"
WORKDIR /app
COPY app .

# RUN npm install
# ARG env=prod
# RUN npm run build -- --prod --enviornment ${env}

### Stage 3
FROM nginx:alpine
LABEL author="Thomas Watson"
VOLUME /var/cache/nginx
COPY --from=node /app/toast/dist /usr/share/nginx/html
# COPY ./config/nginx.conf /etc/nginx/conf.d/default.conf

