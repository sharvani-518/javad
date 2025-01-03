# Use an official OpenJDK runtime as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Java program and the compiled class files
COPY HelloDocker.java /app

# Compile the Java program
RUN javac HelloDocker.java

# Run the program when the container starts
CMD ["java", "HelloDocker"]
