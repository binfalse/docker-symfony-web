# This file is part of the Docker Image for Symfony Web Apps.
# Copyright (C) 2017 Martin Scharm <https://binfalse.de/contact/>
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

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

