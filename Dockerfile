FROM eclipse-temurin:11-alpine@sha256:ee451418cd2b4f4b0ea321681c1383b97b18ec1538ad0185db5d5208366ebc66
#docker image inspect  eclipse-temurin:11-alpine --format '{{json .RepoDigests}}'
LABEL maintainer="Björn Höfling <bjoern.hoefling@camptocamp.com>"
EXPOSE 8080
COPY target/hello*.jar hello.jar
ENTRYPOINT ["java","-jar","/hello.jar"]
