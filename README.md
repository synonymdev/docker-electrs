# Docker electrs

Dockerfile of the public images [vulpemventures/electrs](https://hub.docker.com/r/vulpemventures/electrs) and [vulpemventures/electrs-liquid](https://hub.docker.com/r/vulpemventures/electrs-liquid)


## Electrs

Pull the image:

```bash
$ docker pull ghcr.io/vulpemventures/electrs
```

Run the container:

```bash
$ docker run -p 3002:3002 -d ghcr.io/vulpemventures/electrs
```


## Electrs Liquid
 
Pull the image:

```bash
$ docker pull ghcr.io/vulpemventures/electrs-liquid
```

Run the container:

```bash
$ docker run -p 3002:3002 -d ghcr.io/vulpemventures/electrs-liquid
```

## Release

To tag a new image with a new version:

1) Create a new folder with `COMMIT` as directory name
2) Modify the GH Action in `.github/workflows/docker-publish.yml` changing the ARG `COMMIT` with new created folder
3) Push in master
