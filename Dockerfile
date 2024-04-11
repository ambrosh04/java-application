# Pull base image.
FROM ubuntu:latest

RUN \
# Update
apt-get update -y && \
# Install Java
apt-get install default-jre -y

# No need to ADD if the JAR file is in the same directory as the Dockerfile

EXPOSE 8000

# Run the Spring Boot application directly
CMD java -jar gs-serving-web-content-0.1.0.jar
