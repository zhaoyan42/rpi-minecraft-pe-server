# Copyright (C) 2016  Gerald Fiedler
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

FROM ubuntu:16.04
MAINTAINER Gerald Fiedler <gerald@ixilon.de>

RUN apt-get update \
    && apt-get install -y \
      language-pack-en-base \
      openjdk-8-jre-headless \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN update-locale LANG=en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

VOLUME /srv/nukkit
WORKDIR /srv/nukkit
EXPOSE 19132

COPY nukkit/target/nukkit-1.0-SNAPSHOT.jar /

CMD ["java", "-jar", "/nukkit-1.0-SNAPSHOT.jar"]
