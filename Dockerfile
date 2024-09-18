FROM openjdk:17
WORKDIR /app
COPY ./target/1-0.0.1-SNAPSHOT.jar /app/
CMD ["java", "-jar", "1-0.0.1-SNAPSHOT.jar"]
