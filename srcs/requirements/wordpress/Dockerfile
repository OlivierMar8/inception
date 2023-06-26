#   Dockerfile WORDPRESS olmartin 26.06.23  V26.13

FROM debian:buster

RUN apt update -y && apt upgrade -y && \
    apt-get -y install wget

RUN apt-get install -y \
php7.3 php7.3-fpm \
php7.3-mysql php7.3-phar \
php7.3-json php7.3-xml \
php7.3-mbstring php7.3-curl \
php7.3-gd php7.3-intl \
mariadb-client

COPY ./conf/php.conf /etc/php/7.3/fpm/pool.d/www.conf
RUN useradd http

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY tools/script.sh /script.sh
RUN chmod +x /script.sh

WORKDIR /var/www/wordpress

ENTRYPOINT [ "sh", "/script.sh" ]
