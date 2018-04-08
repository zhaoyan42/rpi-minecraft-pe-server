[![Travis](https://img.shields.io/travis/Nukkit/Nukkit.svg?style=flat)](https://travis-ci.org/Nukkit/Nukkit)
[![](https://gitlab.com/ixilon/nukkit-docker/raw/badges/version.png)]()
[![](https://gitlab.com/ixilon/nukkit-docker/raw/badges/protocol.png)]()
[![Sonatype Nexus](https://img.shields.io/nexus/s/https/oss.sonatype.org/de.ixilon/nukkit.svg)](https://oss.sonatype.org/content/repositories/snapshots/de/ixilon/nukkit/)

## Howto use this image ##

    docker run -it -p 19132:19132/udp ixilon/nukkit

## Volumes ##

The server working directory /srv/nukkit can be mounted as volume to support user defined configuration files and to persist the generated world at the host filesystem.

## Dockerfile ##

The [Dockerfile](https://gitlab.com/ixilon/nukkit-docker/blob/master/Dockerfile) is hosted at GitLab.
The [Nukkit source repo at GitHub](https://github.com/Nukkit/Nukkit) is mirrored to GitLab.
The [mirrored repo](https://gitlab.com/ixilon/nukkit) is automatically build once a hour and triggers a rebuild and push of this Docker image.

## Tags ##

The image has tags for protocol versions, like

    ixilon/nukkit:83

and Minecraft PE versions, like

    ixilon/nukkit:0.15.6

## Issues ##

If you have any problems with or questions about this Docker image, please contact us through a [GitLab issue](https://gitlab.com/ixilon/nukkit-docker/issues).
