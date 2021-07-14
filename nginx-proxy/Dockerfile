FROM nginx:1.13.11
RUN apt-get update && apt-get install -y curl
COPY ./configuration/mime.types /etc/nginx/mime.types
COPY ./configuration/more-complex.conf /etc/nginx/nginx.conf