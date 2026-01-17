#FROM openjdk:17
FROM eclipse-temurin:17-jdk
WORKDIR /appContainer
COPY ./target/jenkinsCiCd.jar /appContainer
EXPOSE 8282
CMD ["java","-jar","jenkinsCiCd.jar"]