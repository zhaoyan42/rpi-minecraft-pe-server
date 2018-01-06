# Copyright (C) 2018  Gerald Fiedler
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

TARGET=nukkit/target
NUKKIT=${TARGET}/nukkit-1.0-SNAPSHOT.jar
VERSION=${TARGET}/VERSION
PROTOCOL=${TARGET}/PROTOCOL
BUILDDIR=build
SRCDIR=src/main/java
PACKAGE=de/ixilon/nukkit

.PHONY: jar version protocol

all: jar version protocol

jar: ${NUKKIT}
version: ${VERSION}
protocol: ${PROTOCOL}

clean:
	rm -rf nukkit ${BUILDDIR}

${NUKKIT}: nukkit
	cd nukkit && mvn clean package

nukkit:
	git clone https://gitlab.com/ixilon/nukkit.git
	cd nukkit && git submodule update --init

${VERSION}: ${SRCDIR}/${PACKAGE}/NukkitVersion.java ${NUKKIT}
	javac -cp ${NUKKIT} $<

${PROTOCOL}: ${SRCDIR}/${PACKAGE}/NukkitProtocol.java ${NUKKIT}
	javac -cp ${NUKKIT} $<
