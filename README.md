Frist of all, sorry for my poor english.

This is a minecraft-pe-server on rpi ，Tested on rpi3b+  MCPE Version 1.1.7

Run with command:

docker run --name nukkit-mcpe-server -it -p 19132:19132/udp zhaoyan42/rpi-minecraft-pe-server

You can simply replace nukkit\target\nukkit-1.0-SNAPSHOT.jar to higher version and rebuild to update server version/protocol

based on :

hypriot/rpi-java 
ixilon/nukkit

