FROM maven:3-eclipse-temurin-11 AS build
COPY ./ /home/app
RUN cd /home/app && mvn clean package -Dmaven.test.skip=true
FROM eclipse-temurin:11-alpine
COPY --from=build /home/app/target/daily_report_system.war /usr/local/lib/demo.war
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/usr/local/lib/demo.war"]
