# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [2.16.0] - 2019-03-04

### Changed

+ Updated hydrus server version

## [2.15.0] - 2019-02-15

### Changed

+ Decreased Compose file version to `3` since none of the `3.7` specific
  features are used
  + `2` would also work, but `3` remains compatible with swarm
    mode
+ Updated hydrus server version
+ Updated hydrusrv version
+ Updated hydrusrv-sync version

## [2.14.0] - 2019-02-10

### Changed

+ Updated hydrus server version

## [2.13.0] - 2019-02-01

### Changed

+ Updated hydrus server version

## [2.12.0] - 2019-01-29

### Changed

+ Updated hydrusrv version
+ Updated hydrusrv-sync version

## [2.11.0] - 2019-01-24

### Changed

+ Updated hydrus server version

## [2.10.0] - 2019-01-20

### Changed

+ Updated hydrus server version

## [2.9.0] - 2019-01-15

### Changed

+ Updated hydrusrv version
+ Updated hydrusrv-sync version

## [2.8.1] - 2019-01-13

### Fixed

+ Rolled hydrus server version back to 334 due to issues with 335

## [2.8.0] - 2019-01-13

### Changed

+ Updated hydrus server version

## [2.7.0] - 2018-12-28

### Changed

+ Updated hydrusrv version
+ Updated hydrusrv-sync version

## [2.6.0] - 2018-12-12

### Changed

+ Updated hydrus server version

## [2.5.0] - 2018-12-09

### Changed

+ Updated hydrusrv version
+ Updated hydrusrv-sync version

## [2.4.0] - 2018-12-06

### Changed

+ Updated hydrusrv version
+ Updated hydrusrv-sync version
+ Updated hydrus server version

## [2.3.0] - 2018-12-04

### Changed

+ Updated hydrusrv version

## [2.2.0] - 2018-12-03

### Added

+ Added additional information about updating

### Changed

+ Updated hydrusrv version
+ Updated hydrusrv-sync version

## [2.1.0] - 2018-12-02

### Changed

+ Updated hydrusrv version
+ Updated hydrusrv-sync version

## [2.0.0] - 2018-12-01

### Added

+ Added compatibility for hydrusrv `4.x` and hydrusrv-sync

### Changed

+ Switched to using Docker Hub images

## [1.29.0] - 2018-11-25

### Changed

+ Updated hydrusrv

## [1.28.0] - 2018-11-21

### Changed

+ Updated hydrusrv

## [1.27.0] - 2018-11-18

### Changed

+ Updated hydrusrv

## [1.26.0] - 2018-11-14

### Changed

+ Updated hydrusrv

## [1.25.0] - 2018-11-10

### Changed

+ Updated hydrusrv

## [1.24.0] - 2018-11-08

### Changed

+ Updated hydrusrv

## [1.23.0] - 2018-11-05

### Changed

+ Updated hydrusrv
+ Updated Travis CI configuration

## [1.22.0] - 2018-10-24

### Changed

+ Updated hydrusrv

## [1.21.0] - 2018-10-01

### Changed

+ Updated hydrusrv

## [1.20.0] - 2018-09-17

### Changed

+ Updated hydrusrv

## [1.19.0] - 2018-08-30

### Changed

+ Updated hydrusrv

### Fixed

+ Added missing indendation in hydrus server Dockerfile

## [1.18.0] - 2018-08-27

### Changed

+ Updated hydrusrv

## [1.17.0] - 2018-08-27

### Changed

+ Updated hydrusrv

## [1.16.0] - 2018-08-22

### Changed

+ Changed Docker configuration to run container as non-root user
+ Updated hydrusrv

## [1.15.0] - 2018-08-19

### Changed

+ Updated hydrusrv

## [1.14.0] - 2018-08-18

### Changed

+ Updated hydrusrv

## [1.13.0] - 2018-08-08

### Changed

+ Updated hydrusrv

## [1.12.0] - 2018-08-06

### Changed

+ Updated hydrusrv

## [1.11.0] - 2018-08-06

### Changed

+ Updated hydrusrv

## [1.10.0] - 2018-08-02

### Changed

+ Renamed `bootstrap.sh` to `docker-bootstrap.sh` to clarify purpose
+ Updated hydrusrv

## [1.9.0] - 2018-08-01

### Changed

+ Updated hydrusrv

## [1.8.0] - 2018-08-01

### Changed

+ Updated hydrusrv

## [1.7.0] - 2018-08-01

### Changed

+ Clarified update process
+ Updated hydrusrv

## [1.6.0] - 2018-07-31

### Changed

+ Updated hydrusrv

## [1.5.0] - 2018-07-29

### Changed

+ Updated hydrusrv

## [1.4.0] - 2018-07-28

### Changed

+ Updated hydrusrv

## [1.3.0] - 2018-07-28

### Changed

+ Made it easier to use custom Docker Compose configurations
+ Updated hydrusrv

## [1.2.0] - 2018-07-25

### Changed

+ Updated hydrusrv

## [1.1.0] - 2018-07-25

### Added

+ Added information about building without cache when updating hydrus server

### Changed

+ Changed hydrus server configuration to run database connection in non-WAL
  mode
+ Added graceful shutdowns for hydrus server (it still exists with code 143,
  but according to the output the server now stops correctly before the
  container is shut down)
+ Updated hydrusrv

### Fixed

+ Fixed typo in readme

## 1.0.0 - 2018-07-17

### Added

+ Initial release

[Unreleased]: https://github.com/mserajnik/hydrusrv-docker/compare/2.16.0...develop
[2.16.0]: https://github.com/mserajnik/hydrusrv-docker/compare/2.15.0...2.16.0
[2.15.0]: https://github.com/mserajnik/hydrusrv-docker/compare/2.14.0...2.15.0
[2.14.0]: https://github.com/mserajnik/hydrusrv-docker/compare/2.13.0...2.14.0
[2.13.0]: https://github.com/mserajnik/hydrusrv-docker/compare/2.12.0...2.13.0
[2.12.0]: https://github.com/mserajnik/hydrusrv-docker/compare/2.11.0...2.12.0
[2.11.0]: https://github.com/mserajnik/hydrusrv-docker/compare/2.10.0...2.11.0
[2.10.0]: https://github.com/mserajnik/hydrusrv-docker/compare/2.9.0...2.10.0
[2.9.0]: https://github.com/mserajnik/hydrusrv-docker/compare/2.8.1...2.9.0
[2.8.1]: https://github.com/mserajnik/hydrusrv-docker/compare/2.8.0...2.8.1
[2.8.0]: https://github.com/mserajnik/hydrusrv-docker/compare/2.7.0...2.8.0
[2.7.0]: https://github.com/mserajnik/hydrusrv-docker/compare/2.6.0...2.7.0
[2.6.0]: https://github.com/mserajnik/hydrusrv-docker/compare/2.5.0...2.6.0
[2.5.0]: https://github.com/mserajnik/hydrusrv-docker/compare/2.4.0...2.5.0
[2.4.0]: https://github.com/mserajnik/hydrusrv-docker/compare/2.3.0...2.4.0
[2.3.0]: https://github.com/mserajnik/hydrusrv-docker/compare/2.2.0...2.3.0
[2.2.0]: https://github.com/mserajnik/hydrusrv-docker/compare/2.1.0...2.2.0
[2.1.0]: https://github.com/mserajnik/hydrusrv-docker/compare/2.0.0...2.1.0
[2.0.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.29.0...2.0.0
[1.29.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.28.0...1.29.0
[1.28.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.27.0...1.28.0
[1.27.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.26.0...1.27.0
[1.26.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.25.0...1.26.0
[1.25.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.24.0...1.25.0
[1.24.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.23.0...1.24.0
[1.23.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.22.0...1.23.0
[1.22.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.21.0...1.22.0
[1.21.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.20.0...1.21.0
[1.20.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.19.0...1.20.0
[1.19.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.18.0...1.19.0
[1.18.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.17.0...1.18.0
[1.17.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.16.0...1.17.0
[1.16.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.15.0...1.16.0
[1.15.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.14.0...1.15.0
[1.14.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.13.0...1.14.0
[1.13.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.12.0...1.13.0
[1.12.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.11.0...1.12.0
[1.11.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.10.0...1.11.0
[1.10.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.9.0...1.10.0
[1.9.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.8.0...1.9.0
[1.8.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.7.0...1.8.0
[1.7.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.6.0...1.7.0
[1.6.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.5.0...1.6.0
[1.5.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.4.0...1.5.0
[1.4.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.3.0...1.4.0
[1.3.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.2.0...1.3.0
[1.2.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.1.0...1.2.0
[1.1.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.0.0...1.1.0
