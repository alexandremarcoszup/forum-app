FROM n0sn1b0r/openjdk11-jdk-alpine
USER spring:spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Xmx512m","-Dserver.port:8080", "-jar", "/app.jar"]