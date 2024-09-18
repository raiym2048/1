# Use a Maven base image to handle the build
FROM maven:3.8.4-openjdk-17 as build
WORKDIR /app

# Copy your source code and pom.xml file to the image
COPY src /app/src
COPY pom.xml /app/

# Run Maven build to package the application
RUN mvn clean install -DskipTests

# Use the OpenJDK image for the final image
FROM openjdk:17
WORKDIR /app

# Copy only the built jar file from the build stage
COPY --from=build /app/target/1-0.0.1-SNAPSHOT.jar /app/

# Command to run the application
CMD ["java", "-jar", "1-0.0.1-SNAPSHOT.jar"]
