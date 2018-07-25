# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

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

[Unreleased]: https://github.com/mserajnik/hydrusrv-docker/compare/1.1.0...develop
[1.1.0]: https://github.com/mserajnik/hydrusrv-docker/compare/1.0.0...1.1.0
