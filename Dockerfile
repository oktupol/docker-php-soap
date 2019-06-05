FROM php:7.3-cli

RUN apt-get update -y \
	&& apt-get install -y libxml2-dev \
	&& apt-get clean -y

RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install soap
