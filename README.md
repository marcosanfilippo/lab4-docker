How to build a docker container for LAB3 (AI 2017 PoliTO)
***************************************************************
* CREATE IMAGE:
# Dockerfile must not be specified, it will be searched automatically

docker build -t IMAGE_NAME PATH/TO/Dockerfile

# or use:

cd PATH/TO/MY/Dockerfile
docker build -t IMAGE_NAME .
Marco's PC:

# docker build -t "postgres" .

Create volumes:
# docker volume create VOLUME_NAME

Inspect volumes:
# docker volume inspect VOLUME_NAME

Take volume path...
# docker run -v /PATH_TO_VOLUME:/CONTAINER_PATH_TO_VOLUME -p 5432:5432 --name "CONTAINER_NAME" IMAGE_NAME

Marco's PC:
# docker run -v /mnt/sda1/var/lib/docker/volumes/lab4/_data:/datadb -p 5432:5432 --name "lab4container" postgres

Log:
# docker logs -f CONTAINER_NAME

INTERACT WITH INTERNAL CONSOLE (INSIDE CONTAINER)
# docker exec -it CONTAINER_NAME bash

# docke container start/stop CONTAINER_NAME