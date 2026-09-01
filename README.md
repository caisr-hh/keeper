# KEEPER website

This repository contains the public KEEPER website at Halmstad University. It is a small static site built with
[MkDocs](https://www.mkdocs.org/) and [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/).

The website is deliberately Markdown-first: each public page is one ordinary Markdown file, and its headings, text,
links, and lists are visible directly in that file.

Production site: <https://caisr-hh.github.io/keeper/>

## Where to edit

- `docs/index.md` — Home

`mkdocs.yml` contains the short site configuration and top navigation.

## Prerequisites

Install Python 3.13 with its standard `venv` module and `pip`. The site and quality tools are pinned in
`requirements.txt`.

## Install and preview

Create and activate the environment once, then install the pinned dependencies:

```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt
```

Then start the live preview:

```bash
make serve
```

MkDocs serves the site at <http://127.0.0.1:8001/keeper/> and refreshes it when a Markdown file is saved. If that port
is occupied, choose another one with `make serve PORT=8010`. Stop the server with `Ctrl+C`.

Activate the environment again after opening a new terminal:

```bash
source .venv/bin/activate
```

After `requirements.txt` changes, update the existing environment with:

```bash
python -m pip install --upgrade -r requirements.txt
```

## Format, validate, and build

Format the Markdown files, including wrapping prose at 120 columns:

```bash
make format
```

Run the complete pre-pull-request check:

```bash
make check
```

This checks Markdown formatting and quality, lints YAML, and runs a strict MkDocs build.

To build without the other checks, run:

```bash
mkdocs build --strict
```

The generated `site/` directory is disposable, ignored by Git, and must not be committed.

See [Contributing.md](Contributing.md) for the branch and pull-request workflow.
