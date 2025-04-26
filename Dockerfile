# Use an official OpenJDK image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy jar file (you'll modify your jenkins job to create this jar)
COPY target/*.jar app.jar

# Expose port
EXPOSE 8086

# Run jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
