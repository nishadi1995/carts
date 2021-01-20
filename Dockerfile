FROM java:openjdk-8-alpine

WORKDIR /usr/src/app
COPY ./target/*.jar ./app.jar

COPY start.sh .
CMD ["bash", "start.sh"]
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/urandom","-jar","./app.jar", "--port=80"]
