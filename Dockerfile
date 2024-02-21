# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the application JAR file into the container
COPY target/sampleapp.war app.jar

# Specify the command to run your application
CMD ["java", "-jar", "app.jar"]