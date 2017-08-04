FROM jitesoft/php-fpm:latest
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>"

ENV COMPOSER_ALLOW_SUPERUSER="1" \
    COMPOSER_HOME="/composer" \
    PATH="/composer/vendor/bin:$PATH"

RUN mkdir /composer && \
    apk add --no-cache git subversion curl && \
    echo "memory_limit=-1" > $PHP_INI_DIR/conf.d/memory-limit.ini && \
    echo "date.timezone=${PHP_TIMEZONE:-UTC}" > $PHP_INI_DIR/conf.d/date_timezone.ini && \
    php -r "copy('https://getcomposer.org/installer', '/tmp/setup.php'); if (hash('SHA384', file_get_contents('/tmp/setup.php')) !== trim(file_get_contents('https://composer.github.io/installer.sig'))) { echo 'Signature did not match.' . PHP_EOL; exit(1); }" && \
    php /tmp/setup.php --install-dir=/usr/bin --filename=composer && \
    rm -rf /tmp/setup.php

VOLUME ["/app"]
WORKDIR /app

CMD ["-"]
ENTRYPOINT ["composer", "--ansi"]
