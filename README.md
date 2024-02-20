# Copier PDM

Copier template for PDM projects.

This copier template is mainly for my own usage, but feel free to try it out, or fork it! Original version is [pdm-project/copier-pdm](https://github.com/pdm-project/copier-pdm).

## Features

### Package manager

The template project uses [PDM](https://pdm.fming.dev) setup, with pre-defined `pyproject.toml`

### Documentation and changelog

- Documentation is built with [MkDocs](https://github.com/mkdocs/mkdocs)
  ([Material theme](https://github.com/squidfunk/mkdocs-material))
- Changelog is auto-generated from the fragments under `news` directory, with the power of [towncrier](https://pypi.org/project/towncrier/)

### Pre-commit and linter

[pre-commit](https://pre-commit.com/) is used for both commit hook and linting, including the following hooks:

- [ruff](https://github.com/charliermarsh/ruff)
- [keep-sorted](https://github.com/google/keep-sorted)
- [do-not-submit](https://github.com/jlebar/pre-commit-hooks/blob/master/check_do_not_submit.py)

### Tests

- Tests run with [pytest](https://pytest.org/). GitHub Actions provide matrix support.

## Requirements

Make below requirements are met to use the copier template:

- Python 3
- Git
- [Copier](https://copier.readthedocs.io/en/stable/)
- [PDM](https://pdm.fming.dev)

## Quick Start

1. Install [PDM](https://pdm.fming.dev) with [Copier](https://copier.readthedocs.io/en/stable/) support:

    ```bash
    pip install --user "pdm[copier]"
    ```

2. Set up a new project with this template: (this will create the project directory for you)

   ```bash
   copier copy --trust "gh:dmcc/copier-pdm" <project_name>
   ```

3. Install project dependencies:

  ```bash
  cd <project_name>
  git init
  pdm install
  ```
