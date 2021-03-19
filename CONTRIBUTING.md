# Contributing

Contributions are welcome, and they are greatly appreciated!
Every little bit helps, and credit will always be given.

## Environment setup

To run the test suites locally, you only need two tools, [copier](https://copier.readthedocs.io/)
and `git`.

```bash
python3 -m pip install --user pipx

pipx install copier
```

## Running tests

To run the tests, run `bash tests/run-tests.sh` or `./tests/run-tests.ps1` depending on which platform you are on.

## Serving docs

```bash
python3 -m venv venv
. venv/bin/activate
pip install mkdocs mkdocs-material
mkdocs serve
```

You can also install `mkdocs` with `pipx` and
inject `mkdocs-material` in its venv,
this way you don't need to create one yourself:

```bash
python3 -m pip install --user pipx
pipx install mkdocs
pipx inject mkdocs mkdocs-material
mkdocs serve
```
