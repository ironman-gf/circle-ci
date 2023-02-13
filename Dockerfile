# Use an existing Java runtime image as the base image
FROM openjdk:14-jdk-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the build artifacts (JAR file) from the host to the container
COPY target/simple-java-project-1.0.0-SNAPSHOT.jar /app/app.jar

# Run the application using the Java runtime
CMD ["java", "-jar", "/app/app.jar"]
