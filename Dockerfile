FROM php:cli
MAINTAINER martin scharm <https://binfalse.de/contact>

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
        zlib1g-dev \
        git \
        graphviz \
        libzip-dev \
 && docker-php-ext-install zip pcntl \
 && apt-get purge -y -q --autoremove \
    zlib1g-dev \
    libzip-dev \
 && apt-get clean \
 && rm -r /var/lib/apt/lists/* /var/cache/*



VOLUME /symfony
WORKDIR /symfony
EXPOSE 8000

ENTRYPOINT ["php", "bin/console"]
CMD ["server:run", "0.0.0.0:8000"]

