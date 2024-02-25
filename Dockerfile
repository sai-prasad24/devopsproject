# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application JAR file into the container
COPY target/sampleapp.war sampleapp.war

EXPOSE 8080

# Specify the command to run your application
CMD ["java", "-jar", "sampleapp.war"]
