[![](https://gitlab.com/ixilon/nukkit-docker/badges/master/build.svg)]() [![](https://gitlab.com/ixilon/nukkit-docker/raw/badges/version.svg)]() [![](https://gitlab.com/ixilon/nukkit-docker/raw/badges/protocol.svg)]()

## Howto use this image ##

    docker run -it -p 19132:19132/udp ixilon/nukkit

## Volumes ##

The server working directory /srv/nukkit can be mounted as volume to support user defined configuration files and to persist the generated world at the host filesystem.

## Dockerfile ##

The Dockerfile is hosted at GitLab. The [Nukkit source repo at GitHub](https://github.com/Nukkit/Nukkit) is mirrored to GitLab. The [mirrored repo](https://gitlab.com/ixilon/nukkit) is automatically build once a hour and triggers a rebuild and push of this Docker image.

## Tags ##

The image has tags for protocol versions, like

    ixilon/nukkit:83

and Minecraft PE versions, like

    ixilon/nukkit:0.15.6

## Issues ##

If you have any problems with or questions about this Docker image, please contact us through a [GitLab issue](https://gitlab.com/ixilon/nukkit-docker/issues).

## Contributing ##

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitLab issue](https://gitlab.com/ixilon/nukkit-docker/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.