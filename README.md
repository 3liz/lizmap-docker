lizmap docker
=============

Dockerfile to build an image of lizmap-web-client with the latest qgis server.

Derived from the work of [Julien ANCELIN](https://github.com/jancelin/docker-lizmap)

### Building the image

Use the docker-compose configuration that define mounted volumes

```
docker-compose up
```

to build and run the image from the local directory.

See the [docker compose page](https://docs.docker.com/compose/) for how to use it. 

or

```
make build 
```

to create the docker image

### Volumes

the lizmaps-docker declare two persistent volumes: the /home directory and the lizmap var directory. When configuring lizmap you should use /home as 
project directory in order to make them persisent.

If you want to use external projects then you have to copy your projects somewhere and mount the container /home where your projects lies on host.
Or create your a new project with the lizmap interface and push your data to the /home volume.

See https://docs.docker.com/engine/userguide/containers/dockervolumes about docker volumes

 




