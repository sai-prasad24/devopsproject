# Use an official OpenJDK runtime as a parent image
FROM tomcat:latest

# Set the working directory in the container
WORKDIR /app

# Copy the application JAR file into the container
COPY target/sampleapp.war /usr/local/tomcat/webapps/sampleapp.war

EXPOSE 8080

