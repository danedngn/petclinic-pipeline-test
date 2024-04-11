FROM openjdk:23-slim

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} petclinic.jar

CMD ["java", "-jar", "/petclinic.jar"]