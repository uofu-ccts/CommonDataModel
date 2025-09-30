#!/bin/bash

docker compose -f docker-compose.yml down

docker rm $(docker ps -a -f status=exited -q)
docker rmi $(docker images -a)
docker volume rm $(docker volume ls -q)
docker system prune -a --volumes

# Stop and remove all containers defined in the podman-compose file
# podman-compose down

# # Remove all stopped containers
# podman rm $(podman ps -a -f status=exited -q)

# # Remove all images
# podman rmi -a -f

# # Remove all volumes
# podman volume rm $(podman volume ls -q)

# # Prune all unused data
# podman system prune -a --volumes -f