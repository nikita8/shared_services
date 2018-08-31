#!/bin/bash -e

echo "Removing exited containers..."
docker ps -a -qf status=exited | xargs -I {} docker rm -v {}

echo "Removing dangling images..."
docker images -a -qf "dangling=true" | xargs -I {} docker rmi {}

echo "Possible Docker trash has been deleted."
