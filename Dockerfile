FROM tomcat:8.0.51-jre8-alpine
EXPOSE 8080
ARG BUILD_VERSION
ENV BUILD_VERSION=${BUILD_VERSION}
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/hearine-1.0-SNAPSHOT.jar /usr/local/tomcat/webapps/hearine-1.0-SNAPSHOT.jar
#CMD ["catalina.sh", "run"]
ADD target/hearine-1.0-SNAPSHOT.jar hearine-1.0-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","hearine-1.0-SNAPSHOT.jar"]
