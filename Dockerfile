# Stage 1: Build the application
FROM maven:3.9.9-eclipse-temurin-21-alpine AS build
WORKDIR /app

# Copy the Maven project files
COPY pom.xml .
COPY src ./src

# Build the application while skipping tests
RUN mvn clean package -DskipTests

# Stage 2: Create the runtime image
FROM eclipse-temurin:21-alpine
WORKDIR /app

# Copy the JAR file from the build stage
COPY --from=build /app/target/somatekai-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

# Define the command to run the application
CMD ["java", "-jar", "app.jar"]
