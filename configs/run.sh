#!/bin/sh
set -e

JAVA_OPTS="-Xms128m -Xmx512m -Dfile.encoding=UTF-8 -Djava.security.egd=file:/dev/urandom"

exec java ${JVM_OPTS} ${JAVA_OPTS} -jar /app/app.jar