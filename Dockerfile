FROM maven:3-eclipse-temurin-11 AS build
COPY ./ /home/app
RUN cd /home/app && mvn clean package -Dmaven.test.skip=true
FROM tomcat:9-jdk11-temurin
COPY --from=build /home/app/target/daily_report_system.war /usr/local/tomcat/webapps/demo.war
EXPOSE 8080
