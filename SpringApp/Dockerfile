FROM openjdk:8-jdk-alpine
#за основу взята 8 версия джавы
#ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} app.jar

EXPOSE 8080

COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

#запуск
#docker build -t springapp1 .
#docker run -d -p 8080:8080 springapp1