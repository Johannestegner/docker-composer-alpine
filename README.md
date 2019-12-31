# Composer

[![Docker Pulls](https://img.shields.io/docker/pulls/jitesoft/composer.svg)](https://hub.docker.com/r/jitesoft/composer)
[![Back project](https://img.shields.io/badge/Open%20Collective-Tip%20the%20devs!-blue.svg)](https://opencollective.com/jitesoft-open-source)
[![pipeline status](https://gitlab.com/jitesoft/dockerfiles/composer-alpine/badges/master/pipeline.svg)](https://gitlab.com/jitesoft/dockerfiles/composer-alpine/commits/master)

PHP cli and Composer running on alpine linux.

## Tags

All images are built for amd64 and arm64.

### Docker hub

* `jitesoft/composer`
  * `7.4`, `7`, `stable`, `latest`
  * `7.3`

### GitLab

* `registry.gitlab.com/jitesoft/dockerfiles/composer-alpine`
  * `7.4`, `7`, `stable`, `latest`
  * `7.3`

_Note:  
Earlier versions of this image was built using php-fpm, since 2020-01-01 the image changed to use the CLI image as default._

Dockerfile can be found at [GitLab](https://gitlab.com/jitesoft/dockerfiles/composer-alpine) and [GitHub](https://github.com/Johannestegner/docker-composer-alpine/blob/master/Dockerfile)

### Image labels

This image follows the [Jitesoft image label specification 1.0.0](https://gitlab.com/snippets/1866155).

## Licenses

The files in this repository are released under the MIT License.  
Composer is released under the [MIT](https://github.com/composer/composer/blob/master/LICENSE) license.  
Read the PHP license [here](https://www.php.net/license/index.php).  
