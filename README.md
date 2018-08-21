# hydrusrv-docker [![Build status][travis-badge]][travis-url]

> A simple Docker Compose setup to manage running hydrus server and hydrusrv

This is a [Docker Compose][docker-compose] setup to run
[hydrus server][hydrus-server] and [hydrusrv][hydrusrv] together. It uses a
shared volume between the two containers that contains the databases and files
of hydrus server as well as the database of hydrusrv.

## Table of contents

+ [Install](#install)
  + [Dependencies](#dependencies)
  + [Updating](#updating)
+ [Usage](#usage)
  + [Initial steps](#initial-steps)
  + [Building the images](#building-the-images)
  + [Running the containers](#running-the-containers)
+ [Maintainer](#maintainer)
+ [Contribute](#contribute)
+ [License](#license)

## Install

The easiest way to install is via cloning this repository:

```zsh
user@local:~$ git clone --recurse-submodules https://github.com/mserajnik/hydrusrv-docker.git
```

`--recurse-submodules` automatically fetches hydrusrv as well when cloning (it
is included as a [submodule][git-submodules]).

### Dependencies

+ [Docker][docker], including [Docker Compose][docker-compose]

### Updating

If you have installed via cloning the repository, you can update via Git:

```zsh
user@local:hydrusrv-docker$ git pull --recurse-submodules
```

## Usage

### Initial steps

Duplicate `docker-compose.yml.example` as `docker-compose.yml`:

```zsh
user@local:hydrusrv-docker$ cp docker-compose.yml.example docker-compose.yml
```

The arguments `HOST_USER_ID` and `HOST_GROUP_ID` (careful, both exist twice,
once per image) in `docker-compose.yml` should match the UID and GID of the
user that is going to start the containers/own the `data` directory (which will
be mounted as a Docker volume later) on the host system.

On a Linux-based host, any newly created files in in the `data` volume will get
ownership by the user/group with the provided UID/GID – not only inside the
containers, but also outside (on your host), making it inconvenient to access
if it does not match the host user that should own the directory (and
everything inside). This is because the containers share the same Linux kernel
(and therefore the same UIDs/GIDs) with your host system.

If you are on macOS or Windows instead, `HOST_USER_ID` and `HOST_GROUP_ID` do
not really matter and can be kept at their defaults because the UIDs/GIDs are
not shared with the containers and any file created inside a volume will just
get ownership by the user/group that started the containers on the host system.

If you do not want to change the default Docker Compose configuration, you do
not have to make any additional adjustments. Otherwise, adjust as needed. The
rest of this guide assumes that you stick to the default configuration.

Next, copy the hydrusrv database template to the `data` directory:

```zsh
user@local:hydrusrv-docker$ cp hydrusrv/storage/app.db.template data/app.db
```

Just like when installing hydrusrv without Docker, create a copy of
`.env.example` and call it `.env`:

```zsh
user@local:hydrusrv-docker$ cp hydrusrv/.env.example hydrusrv/.env
```

In this file, you can now adjust hydrusrv settings to your liking as described
[here][hydrusrv-configuration]. Make sure to use the following values for the
given configuration options if you do not want to adjust any Docker-related
files:

```
PORT=8000

APP_DB_PATH=/usr/src/app/data/app.db

HYDRUS_SERVER_DB_PATH=/usr/src/app/data/server.db
HYDRUS_MASTER_DB_PATH=/usr/src/app/data/server.master.db
HYDRUS_MAPPINGS_DB_PATH=/usr/src/app/data/server.mappings.db

HYDRUS_FILES_PATH=/usr/src/app/data/server_files
```

### Building the images

To build the images, use Docker Compose:

```zsh
user@local:hydrusrv-docker$ docker-compose build
```

You will need to do this again if you update or make changes to hydrusrv's
configuration. Running it again should be significantly faster due to build
caching.

If you want to update hydrus server to a new version (which usually comes out
once per week) you will have to disable build caching with the `--no-cache`
flag, as Docker cannot know that there has been an update:

```zsh
user@local:hydrusrv-docker$ docker-compose build --no-cache
```

### Running the containers

After you have built the images, you can spin up new containers from them like
this:

```zsh
user@local:hydrusrv-docker$ docker-compose up -d
```

To check if they have not crashed when starting (this would indicate a
configuration error), you can use a built-in Docker command:

```zsh
user@local:hydrusrv-docker$ docker ps
```

This should show two running containers (unless you are running additional
ones), one for hydrus server and one for hydrusrv.

Alternatively, you can also open a web browser and hit `https://0.0.0.0:45870`
for hydrus (needs to be `https` – your browser will likely show a certificate
issue, but that is because hydrus uses a self-signed one – you can safely
ignore that warning) and `http://0.0.0.0:8000/api` for hydrusrv to see if they
are working correctly.

To stop the containers and remove them, use the following command:

```zsh
user@local:hydrusrv-docker$ docker-compose down
```

For further information, take a look at the
[Docker Compose documentation][docker-compose].

## Maintainer

[mserajnik][maintainer-url]

## Contribute

You are welcome to help out!

[Open an issue][issues-url] or submit a pull request.

## License

[MIT](LICENSE.md) © Michael Serajnik

[travis-url]: https://travis-ci.com/mserajnik/hydrusrv-docker
[travis-badge]: https://travis-ci.com/mserajnik/hydrusrv-docker.svg

[hydrus-server]: http://hydrusnetwork.github.io/hydrus
[hydrusrv]: https://github.com/mserajnik/hydrusrv
[docker-compose]: https://docs.docker.com/compose/
[git-submodules]: https://git-scm.com/docs/git-submodule
[docker]: https://www.docker.com/
[hydrusrv-configuration]: https://github.com/mserajnik/hydrusrv#configuration

[maintainer-url]: https://github.com/mserajnik
[issues-url]: https://github.com/mserajnik/hydrusrv-docker/issues/new
