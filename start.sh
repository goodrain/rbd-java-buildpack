#!/bin/bash
mv /pkg/lang/java/maven /pkg/lang/jvm
rm -rf /pkg/lang/java/*.tar.gz /pkg/lang/java/jdk /pkg/lang/java/*.tgz /pkg/lang/java/*.jar /pkg/lang/jdk/*.tar.gz /pkg/lang/jdk/*.tgz
if [ "$1" = "bash" ];then
    exec /bin/bash
elif [ "$1" = "version" ];then
    exec /usr/local/bin/caddy -version
elif [ "$1" = "plugins" ];then
    exec /usr/local/bin/caddy -plugins
else
    exec /usr/local/bin/caddy $@
fi
