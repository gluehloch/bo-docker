FROM maven:3.9.9-eclipse-temurin-21-jammy

# Install Git
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Run the command to start the container
CMD ["bash"]
