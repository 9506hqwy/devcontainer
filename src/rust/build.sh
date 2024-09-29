#!/bin/bash

# https://github.com/devcontainers/cli/blob/v0.71.0/src/spec-node/devContainersSpecCLI.ts#L505
devcontainer build --docker-path podman --workspace-folder . --image-name rust-ubi9 --push false
