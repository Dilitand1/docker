FROM openjdk:8-jdk-alpine
#за основу взята 8 версия джавы
#ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} app.jar

EXPOSE 8890

COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

#запуск
#docker build -f Dockerfile -t dilitand/java:latest .
#docker run -d -p 6060:8890 dilitand/java:latest