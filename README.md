# Composer - Alpine

[![Docker Pulls](https://img.shields.io/docker/pulls/jitesoft/composer.svg)](https://cloud.docker.com/u/jitesoft/repository/docker/jitesoft/composer)
[![Back project](https://img.shields.io/badge/Open%20Collective-Tip%20the%20devs!-blue.svg)](https://opencollective.com/jitesoft-open-source)

PHP and Composer running on alpine linux.

## Tags

### Docker hub

Tags represents the php version of the image.  
The default tags include `php-fpm` while the `cli` tags is just plain php cli.

* `7.3`, `7`, `stable`, `latest`
* `7.2`
* `7.3-cli`, `7-cli`, `stable-cli`, `latest-cli`
* `7.2-cli`

No longer maintained:

* `7.1`
* `7.0`
* `5.6`, `5`

### GitLab

* `registry.gitlab.com/jitesoft/dockerfiles/composer-alpine/fpm`
  * `7.3`, `7`, `stable`, `latest`
  * `7.2`
* `registry.gitlab.com/jitesoft/dockerfiles/composer-alpine/cli`
  * `7.3`, `7`, `stable`, `latest`
  * `7.2`

### Quay.io

* `registry.gitlab.com/jitesoft/dockerfiles/composer`
  * `7.3-fpm`, `7-fpm`, `stable-fpm`, `latest-fpm`
  * `7.2-fpm`
  * `7.3`, `7`, `stable`, `latest`
  * `7.2`

_Note: Earlier releases on Docker Hub was php-fpm only, new releases also include CLI version, 
but the none-suffixed tags are kept as they are to make sure they are backwards compatible, quay.io uses the 
more correct tagging where CLI is default and fpm is suffixed._

Dockerfile can be found at [GitLab](https://gitlab.com/jitesoft/dockerfiles/composer-alpine) and [GitHub](https://github.com/Johannestegner/docker-composer-alpine/blob/master/Dockerfile)

### Image labels

This image follows the [Jitesoft image label specification 1.0.0](https://gitlab.com/snippets/1866155).

## Licenses

The files in this repository are released under the MIT License.  
Composer is released under the [MIT](https://github.com/composer/composer/blob/master/LICENSE) license.  
Read the PHP license [here](https://www.php.net/license/index.php).  
