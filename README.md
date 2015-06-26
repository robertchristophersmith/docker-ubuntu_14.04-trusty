Repository for building base image robertchristophersmith/docker-ubuntu_14.04
=================

Modified Ubuntu 14.04 LTS 'Trusty' with essential libraries and packages pre-installed for Docker images/containers extending this base. 
Added packages:
* software-properties-common
* libreadline6-dev
* libreadline6
* git
* unzip
* sudo
* curl
* wget
* zip

The image also includes additional commands to ensure UTF-8 is set as default.

## Serves as a base image for these images/containers:
* [robertchristophersmith/docker-nginx_with_php-fpm](https://github.com/robertchristophersmith/docker-nginx_with_php-fpm)
* [robertchristophersmith/docker-mariadb](https://github.com/robertchristophersmith/docker-mariadb)
* [robertchristophersmith/docker-phpmyadmin](https://github.com/robertchristophersmith/docker-phpmyadmin)
 
