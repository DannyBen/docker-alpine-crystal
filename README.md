Docker Alpine Crystal Image
==================================================

[View on Docker Hub][1] | [View on GitHub][2]

---

This is an Alpine docker image with Crystal and other dependencies designed
for building static Crystal binaries.

It is based on the work of these individuals:
- [j8r/crystal-alpine](https://github.com/j8r/dockerfiles/tree/master/crystal-alpine)
- [sam0x17/crystal-alpine](https://github.com/sam0x17/crystal-alpine/blob/master/Dockerfile)


Usage
--------------------------------------------------

```shell
# Show crystal version
$ docker run -it --rm dannyben/crystal --version

# Compile ./hello.cr
$ docker run -it --rm -v $PWD:/app dannyben/crystal build --static --release hello.cr
```

Usage with docker-compose
--------------------------------------------------

You can use the provided [docker-compose.yml](docker-compose.yml) file:

```shell
# Enter shell
$ docker-compose run bash

# See crystal version
$ docker-compose run version

# Build
$ docker-compose run build
```


[1]: https://hub.docker.com/r/dannyben/crystal/
[2]: https://github.com/DannyBen/docker-alpine-crystal
