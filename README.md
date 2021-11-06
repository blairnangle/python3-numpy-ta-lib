# python3-numpy-ta-lib

Docker image with [NumPy](https://pypi.org/project/numpy/) and [TA-Lib](https://pypi.org/project/TA-Lib/) installed.
Built and uploaded to Docker Hub using GitHub Actions.

## Motivation

Kept running into NumPy installation issues with Alpine Docker Python base images.

## GitHub Actions workflows

### Build

All pushes to and merges into `main` will trigger the Docker image to be built.

### Build, tag, push

Releases are created manually through the GitHub UI with new semver tags created on release publish. Release notes are
generated from commit messages and pull request markdown by selecting the "Auto-generate release notes" button.
Publishing a GitHub release will trigger the _Build, tag, push_ workflow, which will push the latest image version to
Docker Hub, as well as a version tagged with the semver tag that was created as a result of publishing the GitHub
release.

### Secrets

`DOCKERHUB_PERSONAL_ACCESS_TOKEN` needs to be saved as a secret ("Settings" -> "Secrets" -> "New repository secret").

## Inspiration

[docker-python-talib](https://github.com/otassel/docker-python-talib) by [Olivier Tassel](https://github.com/otassel).
