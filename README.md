# Docker image for `mkdocs`

[![](https://img.shields.io/docker/pulls/paillechat/docker-mkdocs.svg)](https://hub.docker.com/r/paillechat/docker-mkdocs)
[![License](https://img.shields.io/badge/license-MIT-%233DA639.svg)](https://opensource.org/licenses/MIT)

View **[Dockerfile](https://github.com/paillechat/docker-mkdocs/blob/main/Dockerfile)** on GitHub.

[Docker hub](https://hub.docker.com/r/paillechat/docker-mkdocs)

Tiny Alpine-based multistage-builld dockerized version of [mkdocs](https://www.mkdocs.org).

## Docker mounts

The working directory inside the Docker container is **`/mkdocs/`** and should be mounted locally to
the root of your project.

## Usage

### Basic
```bash
$ make build
$ make run
```

Then mkdocs will be available at http://127.0.0.1:8000

## License

**[MIT License](LICENSE)**