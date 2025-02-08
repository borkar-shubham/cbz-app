FROM openjdk:11-ea-17-jre-slim

# Set the working directory inside the container
WORKDIR /app

COPY target/*.jar /app/app.jar

# Expose port if your app requires it (optional)
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "/app/app.jar", ">", "/dev/null", "2>&1", "&"]
