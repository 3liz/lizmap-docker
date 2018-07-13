# This project is deprecated in favor of the [docker-lizmap-web-client](https://github.com/3liz/docker-lizmap-web-client) image.

Lizmap docker
=============

Dockerfile to build an image of lizmap-web-client with the latest qgis server.

Derived from the work of [Julien ANCELIN](https://github.com/jancelin/docker-lizmap)

### Building the image

Use the docker-compose configuration that define mounted volumes

```
docker-compose up
```

To build and run the image from the local directory.
You can then access Lizmap by using [http://localhost:8181/](http://localhost:8181/)
and QGIS Server [http://localhost:8200/](http://localhost:8200/)

See the [docker compose page](https://docs.docker.com/compose/) for how to use it. 

or

```
make build 
```

to create the docker image

### Volumes

The lizmaps-docker declare two persistent volumes: the /home directory and the lizmap var directory. When configuring lizmap you should use /home as
project directory in order to make them persistent.

If you want to use external projects then you have to copy your projects somewhere and mount the container /home where your projects lies on host.
Or create your a new project with the lizmap interface and push your data to the /home volume.

For instance, if you uncomment the line in the docker-compose file, you can store your QGIS files in a directory called 'projects' within this folder.

See https://docs.docker.com/storage/volumes/#start-a-container-with-a-volume about docker volumes

 
### Exposed ports

- The Lizmap API  is exposed on the port **80** of the container
- The qgis WMS server is exposed on the port **8200** of the container.

###  Troubleshooting

* If when you open one of your project, you have an error in background of lizmap in the webbrowser: "Service unavailable"
  * When Lizmap is running in the container, you need to update the settings about where QGIS Server is.
  * In the admin panel, update the default location of QGIS Server with `http://127.0.0.1:8200` instead of `http://127.0.0.1/cgi-bin/qgis_mapserv.fcgi`.



