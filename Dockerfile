FROM eclipse-temurin:11-alpine
LABEL maintainer="Björn Höfling <bjoern.hoefling@camptocamp.com>"
EXPOSE 8080
COPY target/hello*.jar hello.jar
ENTRYPOINT ["java","-jar","/hello.jar"]
