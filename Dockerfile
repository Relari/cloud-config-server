FROM openjdk:11.0-jre-slim
EXPOSE 8888
ARG JAR_FILE=target/*.jar
ADD ${JAR_FILE} cloud-config-server.jar
ENTRYPOINT ["java","-jar","/cloud-config-server.jar"]