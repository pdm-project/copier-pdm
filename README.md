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
- [do-not-submit]([https://github.com/jlebar/pre-commit-hooks](https://github.com/jlebar/pre-commit-hooks/blob/master/check_do_not_submit.py))

### Tests

- Tests run with [pytest](https://pytest.org/)

## Requirements

Make below requirements are met to use the copier template:

- Python 3
- Git
- [Copier](https://copier.readthedocs.io/en/stable/)

## Quick Start

1. Install [Copier](https://copier.readthedocs.io/en/stable/):

    ```bash
    pip install --user copier
    ```

2. Set up a new project with this template:

    ```bash
    copier copy --trust "gh:dmcc/copier-pdm" <project_name>
    ```
