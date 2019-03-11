# hydrusrv-docker [![Build status][travis-badge]][travis]

> A simple Docker Compose setup to manage running hydrus server, hydrusrv and
> hydrusrv-sync

__Adandoned: hydrusrv-docker is no longer maintained.__

This is a [Docker Compose][docker-compose] setup to run
[hydrus server][hydrus-server], [hydrusrv][hydrusrv] and
[hydrusrv-sync][hydrusrv-sync] together. It shares a volume between the three
containers that contains the databases and files of hydrus server as well as
the databasees of hydrusrv.

## Table of contents

+ [Install](#install)
  + [Dependencies](#dependencies)
  + [Updating](#updating)
    + [Upgrading from 1.x to 2.x](#upgrading-from-1x-to-2x)
+ [Usage](#usage)
  + [Configuration](#configuration)
  + [Running the containers](#running-the-containers)
+ [Maintainer](#maintainer)
+ [Contribute](#contribute)
+ [License](#license)

## Install

The easiest way to install is via cloning this repository:

```zsh
user@local:~$ git clone https://github.com/mserajnik/hydrusrv-docker.git
```

### Dependencies

+ [Docker][docker], including [Docker Compose][docker-compose]

### Updating

If you have installed via cloning the repository, you can update via Git:

```zsh
user@local:hydrusrv-docker$ git pull
```

After updating, compare your `docker-compose.yml` with
`docker-compose.yml.example` in case that file has changed with the update and
adjust your configuration accordingly. Most of the time, updates will bump the
version of one or more of the services.

hydrusrv-docker follows [semantic versioning][semantic-versioning] and any
breaking changes that require additional attention will be released under a new
major version (e.g., `2.0.0`). Minor version updates (e.g., `1.1.0` or `1.2.0`)
are therefore always safe to simply install via the routine mentioned before.

When necessary, this section will be expanded with upgrade guides to new major
versions.

#### Upgrading from 1.x to 2.x

With `2.0.0`, compatibility for newer hydrusrv versions (`4.x`+) and
hydrusrv-sync has been added. Since [hydrus server][hydrus-server-docker],
[hydrusrv][hydrusrv-docker] and [hydrusrv-sync][hydrusrv-sync-docker] are now
all available on [Docker Hub][docker-hub], hydrusrv-docker can just use those
images instead of forcing the user to build them himself.

All three containers can be configured fully via `docker-compose.yml` (no more
editing hydrusrv's `.env` file) and those changes apply on container creation
instead of on image build which makes it a lot faster and more convenient to
adjust settings. Therefore, you need to replicate the settings you would have
set via hydrusrv's `.env` before in `docker-compose.yml` and also configure
hydrusrv-sync.

Instead of using a bind mount, the recommended way to persist data is now via
named volume. The easiest way to move your existing data to the volume is to
spin up the containers and shut them down again – this will create the named
volume on the first startup. Next, go to the volume directory on the host
machine (usually `/var/lib/docker/volumes/<volume name>`) and replace all the
data inside with your existing contents in the `data` directory.

Lastly, rename your application database (usually `app.db`) to
`authentication.db` to finish the migration (or simply delete `app.db` if you
do not care about losing any existing users/tokens – in that case, hydrusrv
will create a new `authentication.db` itself on the next startup).

## Usage

### Configuration

Duplicate `docker-compose.yml.example` as `docker-compose.yml`:

```zsh
user@local:hydrusrv-docker$ cp docker-compose.yml.example docker-compose.yml
```

First, you have to set the volume used by the containers. Take a look at the
`volumes` section in each service block. It is recommended to stick to the
default setup (using a named volume) for performance and ease of use. If you
decide to do so and are happy with the volume name (`hydrusrv-docker-data`),
you do not have to change anything for this step.

You can also use a bind mount instead of a volume if you wish. Whatever you do,
make sure to use the mount point `/data` inside the containers to avoid issues
and do not forget to also adjust the top-level `volumes` block (outside the
three service blocks) if you rename the default volume.

Next, take a look at the settings for [hydrusrv][hydrusrv-configuration] and
[hydrusrv-sync][hydrusrv-sync-configuration] and adjust the `environment`
sections of both services as needed. The paths for database files, access log
file and hydrus server media files are already set up to work with the default
volume setup. If you change the `PORT` environment variable of hydrusrv, make
sure to also adjust its `ports` section accordingly.

Finally, the hydrusrv-sync container will run syncs in intervals using a cron
job. By default, the schedule is `0 4 * * *`, which translates to every day at
4am. If you wish to change this schedule, simply adjust the
`DOCKER_CRON_SCHEDULE` environment variable in the hydrusrv-sync service block.

### Running the containers

You can spin up the containers like this:

```zsh
user@local:hydrusrv-docker$ docker-compose up -d
```

To check if they have not crashed when starting (this would indicate a
configuration error), you can use the following command:

```zsh
user@local:hydrusrv-docker$ docker ps
```

This should show three running containers (unless you are running additional
ones); one for hydrus server, one for hydrusrv and one for hydrusrv-sync.

Alternatively, you can also open a web browser and hit `https:/localhost:45870`
for hydrus (needs to be `https`; your browser will likely show a certificate
issue, but that is because hydrus uses a self-signed one – you can safely
ignore that warning) and `http://localhost:8000/api` for hydrusrv to see if
they are working correctly.

To stop the containers and remove them, use the following command:

```zsh
user@local:hydrusrv-docker$ docker-compose down
```

You will have to do this every time you update hydrusrv-docker. Simply running
`docker-compose up -d` again afterwards will re-create the containers from the
updated images.

From time to time, you will want to remove old and no longer used images and
containers. To do this, you can use the following command:

```zsh
user@local:hydrusrv-docker$ docker system prune
```

I recommend doing this after updating and re-creating the containers so it will
automatically remove anything that is no longer in use.

For further information, take a look at the
[Docker Compose documentation][docker-compose].

## Maintainer

[mserajnik][maintainer]

## Contribute

You are welcome to help out!

[Open an issue][issues] or submit a pull request.

## License

[MIT](LICENSE.md) © Michael Serajnik

[travis]: https://travis-ci.com/mserajnik/hydrusrv-docker
[travis-badge]: https://travis-ci.com/mserajnik/hydrusrv-docker.svg

[hydrus-server]: http://hydrusnetwork.github.io/hydrus
[hydrusrv]: https://github.com/mserajnik/hydrusrv
[hydrusrv-sync]: https://github.com/mserajnik/hydrusrv-sync
[docker-compose]: https://docs.docker.com/compose/
[semantic-versioning]: https://semver.org/
[hydrus-server-docker]: https://hub.docker.com/r/mserajnik/hydrus-server-docker/
[hydrusrv-docker]: https://hub.docker.com/r/mserajnik/hydrusrv/
[hydrusrv-sync-docker]: https://hub.docker.com/r/mserajnik/hydrusrv-sync/
[docker-hub]: https://hub.docker.com
[hydrusrv-configuration]: https://github.com/mserajnik/hydrusrv#configuration
[hydrusrv-sync-configuration]: https://github.com/mserajnik/hydrusrv-sync#configuration
[docker]: https://www.docker.com/
[hydrusrv-configuration]: https://github.com/mserajnik/hydrusrv#configuration

[maintainer]: https://github.com/mserajnik
[issues]: https://github.com/mserajnik/hydrusrv-docker/issues/new
