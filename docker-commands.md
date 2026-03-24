### 1. Build Docker image from Dockerfile (usually for Spring Boot app)
docker build -t my-java-app .

### 2. List all images
docker images

### 3. Run the Docker container from the built image
docker run -d -p 8080:8080 --name java-app-container my-java-app

### 4. View running containers
docker ps

### 5. View all containers (including stopped ones)
docker ps -a

### 6. Stop a running container
docker stop java-app-container

### 7. Start a stopped container
docker start java-app-container

### 8. Restart a container
docker restart java-app-container

### 9. Remove a container
docker rm java-app-container

### 10. Remove an image
docker rmi my-java-app

### 11. View logs of a container (helpful for debugging)
docker logs java-app-container

### 12. Execute a command inside a running container (like inspecting files, checking logs)
docker exec -it java-app-container bash

### 13. Tag an image (e.g., for pushing to Docker Hub)
docker tag my-java-app ayushshrivastaav/my-java-app:latest

### 14. Login to Docker Hub
docker login

### 15. Push image to Docker Hub
docker push ayushshrivastaav/my-java-app:latest

### 16. Pull image from Docker Hub
docker pull ayushshrivastaav/my-java-app:latest

### 17. Remove all stopped containers
docker container prune -f

### 18. Remove all unused images
docker image prune -a -f

### 19. Check Docker version
docker version

### 20. View system-wide Docker resource usage
docker system df

### 21. Compose up (if using docker-compose.yml for multi-container apps)
docker-compose up -d

### 22. Compose down
docker-compose down
