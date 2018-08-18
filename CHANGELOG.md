# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

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

[Unreleased]: https://github.com/mserajnik/hydrusrv-docker/compare/1.14.0...develop
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
