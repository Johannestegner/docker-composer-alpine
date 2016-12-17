FROM php:7-alpine
MAINTAINER Johannes Tegnér <johannes@jitesoft.com>

RUN apk add --update \
    git subversion autoconf file g++ curl gcc binutils isl libatomic libc-dev musl-dev make re2c libstdc++ libgcc binutils-libs mpc1 mpfr3 gmp libgomp \
    coreutils freetype-dev libjpeg-turbo-dev libltdl libmcrypt-dev libpng-dev && \
    docker-php-ext-install iconv mcrypt mysqli pdo pdo_mysql zip && \
    docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ && \
    docker-php-ext-install gd && \
    apk del autoconf file g++ gcc binutils isl libatomic libc-dev musl-dev make re2c libstdc++ libgcc binutils-libs mpc1 mpfr3 gmp libgomp && \
    rm -rf /var/cache/apk/*

RUN echo "memory_limit=-1" > $PHP_INI_DIR/conf.d/memory-limit.ini
RUN echo "date.timezone=${PHP_TIMEZONE:-UTC}" > $PHP_INI_DIR/conf.d/date_timezone.ini
RUN mkdir /composer

ENV COMPOSER_HOME /composer
ENV PATH /composer/vendor/bin:$PATH
ENV COMPOSER_ALLOW_SUPERUSER 1

RUN php -r "copy('https://getcomposer.org/installer', '/tmp/setup.php'); if (hash('SHA384', file_get_contents('/tmp/setup.php')) !== trim(file_get_contents('https://composer.github.io/installer.sig'))) { echo 'Signature did not match.' . PHP_EOL; exit(1); }" && \
    php /tmp/setup.php --install-dir=/composer \
    rm -rf /tmp/setup.php 

VOLUME ["/app"]
WORKDIR /app

CMD ["-"]
ENTRYPOINT ["php", "/composer/composer.phar", "--ansi"]
