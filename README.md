# python-devcontainer [![Docker](https://img.shields.io/docker/v/jeffersonlab/python-devcontainer?sort=semver&label=DockerHub)](https://hub.docker.com/r/jeffersonlab/python-devcontainer)
A Python [devcontainer](https://containers.dev/).

## Overview
The 1.x version series uses the following:
- Python 3.10.x
- Ubuntu "jammy"
- [Docker outside of Docker](https://github.com/devcontainers/features/tree/main/src/docker-outside-of-docker) (sibling container).   Use a bind mount of the form `/var/run/docker.sock:/var/run/docker.sock`. We don't use [Docker in  Docker](https://github.com/devcontainers/features/tree/main/src/docker-in-docker), because it appears to be the [less good option](https://jpetazzo.github.io/2015/09/03/do-not-use-docker-in-docker-for-ci/).

## Quick Start with Compose
1. Grab project
```
git clone https://github.com/JeffersonLab/python-devcontainer
cd python-devcontainer
```
2. Launch [Compose](https://github.com/docker/compose)
```
docker compose up
```

## Install
Add a [.devcontainer](https://github.com/JeffersonLab/python-devcontainer/tree/main/.devcontainer) directory to your project and launch it with Compose or your favorite devcontainer launcher (GitHub [Codespaces](https://github.com/features/codespaces), JetBrains [Gateway](https://www.jetbrains.com/remote-development/gateway/), VSCode [devcontainer extension](https://code.visualstudio.com/docs/devcontainers/containers)).

## Build / Release
Make changes to the Dockerfile, test them, then bump the version in the VERSION file and commit it.  The CD GitHub Action should take care of the rest.