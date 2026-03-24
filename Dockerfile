FROM ubuntu:22.04

# Install OpenJDK 17
RUN apt-get update && apt-get install -y openjdk-21-jdk && rm -rf /var/lib/apt/lists/*

# Set JAVA_HOME and update PATH (often handled by the apt install, but good practice)
ENV JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
ENV PATH=$PATH:$JAVA_HOME/bin

# Set the working directory inside the container
WORKDIR /app

# Copy your application JAR file into the container
COPY target/devops-0.0.1-SNAPSHOT.jar devops-0.0.1-SNAPSHOT.jar

# Command to run the Java application when the container starts
ENTRYPOINT ["java","-jar","/app/devops-0.0.1-SNAPSHOT.jar"]
