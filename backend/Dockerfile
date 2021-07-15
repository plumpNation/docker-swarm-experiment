FROM nginx:1.13.11
RUN apt-get update && apt-get install -y curl
COPY ./src/html /usr/share/nginx/html
COPY ./configuration/default.conf /etc/nginx/conf.d/default.conf