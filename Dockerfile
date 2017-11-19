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
