# Docker Image for a Symfony Web Application
A Docker image to compile and run and server a [Symfony](https://symfony.com) application.

The image is available as [binfalse/symfony-web](https://hub.docker.com/r/binfalse/symfony-web).

# Usage

Just mount your Symfony project to `/symfony` of a container and forward port `8000`.
A typical call would look like this:

    docker run --rm -it -v /path/to/project:/symfony -p 8000:8000 binfalse/symfony-web

This will spawn a webserver serving your application.
Open your browser at [localhost:8000](http://localhost:8000) and expect to see your symfony project! :)

If you do not want a webserver, but want to debug the router, you may provide alternative commands to Symfony's console, eg:

    docker run --rm -it -v /path/to/project:/symfony -p 8000:8000 binfalse/symfony-web debug:router

## LICENSE

        Docker Image for a Symfony Web Application
        Copyright (C) 2019 Martin Scharm <https://binfalse.de/contact/>

        This program is free software: you can redistribute it and/or modify
        it under the terms of the GNU General Public License as published by
        the Free Software Foundation, either version 3 of the License, or
        (at your option) any later version.

        This program is distributed in the hope that it will be useful,
        but WITHOUT ANY WARRANTY; without even the implied warranty of
        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
        GNU General Public License for more details.

        You should have received a copy of the GNU General Public License
        along with this program.  If not, see <http://www.gnu.org/licenses/>.

