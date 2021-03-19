# Copier PDM

Copier template for PDM projects.

This copier template is mainly for my own usage,
but feel free to try it out, or fork it!

## Features

### Package manager

The template project uses [PDM](https://pdm.fming.dev) setup, with pre-defined `pyproject.toml`

### Documentation and changelog

- Documentation is built with [MkDocs](https://github.com/mkdocs/mkdocs)
  ([Material theme](https://github.com/squidfunk/mkdocs-material)
- Changelog is auto-generated from the fragments under `news` directory, with the power of [towncrier](https://pypi.org/project/towncrier/)

### Pre-commit and linter

[pre-commit](https://pre-commit.com/) is used for both commit hook and linting, including the following hooks:

- [flake8](https://gitlab.com/pycqa/flake8)
- [black](https://github.com/psf/black)
- [isort](https://github.com/timothycrosley/isort)

### Tests

- Tests run with [pytest](https://pytest.org/)
- Multi-environment testing powered by [nox](https://nox.thea.codes/)

## Requirements

Make below requirements are met to use the copier template:

- Python 3
- Git
- [Copier](https://copier.readthedocs.io/en/stable/)

## Quick Start

```bash
copier "https://github.com/pdm-project/copier-pdm.git" <project_name>
```

Or even shorter:

```bash
copier "gh:pdm-project/copier-pdm" <project_name>
```

See the [documentation](https://copier-pdm.fming.dev) for more details.
