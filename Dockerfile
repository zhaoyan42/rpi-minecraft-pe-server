FROM ubuntu:16.04
MAINTAINER Gerald Fiedler <gerald@ixilon.de>

RUN apt-get update \
    && apt-get install -y \
      openjdk-8-jre-headless \ 
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY nukkit/target/nukkit-1.0-SNAPSHOT.jar /
VOLUME /srv/nukkit
WORKDIR /srv/nukkit
EXPOSE 19132

CMD ["java", "-jar", "/nukkit-1.0-SNAPSHOT.jar"]

