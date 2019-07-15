ARG BASE_IMAGE
ARG PHP_VERSION
FROM ${BASE_IMAGE}:${PHP_VERSION}
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>" \
      maintainer.org="Jitesoft" \
      maintainer.org.uri="https://jitesoft.com" \
      com.jitesoft.project.repo.type="git" \
      com.jitesoft.project.repo.uri="https://gitlab.com/jitesoft/dockerfiles/composer-alpine" \
      com.jitesoft.project.repo.issues="https://gitlab.com/jitesoft/dockerfiles/composer-alpine/issues" \
      com.jitesoft.project.registry.uri="registry.gitlab.com/jitesoft/dockerfiles/composer-alpine"

ENV COMPOSER_ALLOW_SUPERUSER="1" \
    COMPOSER_HOME="/composer" \
    PATH="/composer/vendor/bin:$PATH" \
    COMPOSER_NO_INTERACTION="1"

COPY ./downloads/composer-setup.php /composer-setup.php

RUN echo "memory_limit=-1" > $PHP_INI_DIR/conf.d/memory-limit.ini \
 && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > $PHP_INI_DIR/conf.d/date_timezone.ini \
 && php /composer-setup.php --install-dir=/usr/local/bin --filename=composer \
 && rm /composer-setup.php \
 && composer -V \
 && php --version

ENTRYPOINT ["entrypoint"]
