############################################################
# Dockerfile to build image for our authz springboot application
# Based on java 8 image
############################################################
FROM openjdk:8-jdk-alpine

# File Author / Maintainer
LABEL AUTHOR="Amod Singh"

EXPOSE 8080

RUN apk --no-cache add curl

COPY run.sh /run.sh
COPY *.jar /app/app.jar

RUN ["chmod", "+x", "/run.sh"]
ENTRYPOINT ["/run.sh"]