FROM nginx:1.13.11
RUN apt-get update && apt-get install -y curl
COPY ./configuration/more-complex.conf /etc/nginx/conf.d/default.conf