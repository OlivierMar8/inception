#   Dockerfile NGINX olmartin 26.06.23  V26.13

FROM debian:buster


RUN apt update -y && apt upgrade -y && apt install nginx -y

RUN apt install openssl -y && apt upgrade -y

RUN mkdir -m 755 -p /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -days 42 -nodes -x509 \
-out /etc/nginx/ssl/inception.crt \
-keyout /etc/nginx/ssl/inception.key \
-subj "/C=CH/ST=VD/L=Lausanne/O=42/OU=42/CN=${DOMAIN_NAME}/UID=${MYSQL_USER}"

COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

CMD [ "nginx", "-g", "daemon off;"]