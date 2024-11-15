# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /minecraft

# Copy the Minecraft server JAR file from the repository to the container
COPY . /minecraft

# Expose Minecraft's default port
EXPOSE 25565

# Start the Minecraft server with appropriate memory settings
CMD ["java", "-Xmx2G", "-Xms1G", "-jar", "your_minecraft_server.jar", "nogui"]
