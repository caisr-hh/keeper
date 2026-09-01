# Contributing

> **Why this workflow?** All changes go through a short-lived branch and a reviewed pull request so that `master` stays
> clean, deployable, and easy to understand.

Do **not** commit or push directly to `master`.

Ordinary website changes only require basic Markdown. Each webpage is one file:

- Change the landing page in `docs/index.md`.
- Add or update a researcher in `docs/people.md`.
- Add or update a project in `docs/projects.md`.
- Add a publication in `docs/publications.md`.

## Set up the website once

Install Python 3.13 with its standard `venv` module and `pip`, then run:

```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt
```

Preview the website with `make serve` and open the address MkDocs prints. Stop the server with `Ctrl+C`.

After opening a new terminal, run `source .venv/bin/activate` before using the site commands. If `requirements.txt`
changes, update the environment with:

```bash
python -m pip install --upgrade -r requirements.txt
```

## Each time you make a change

### 1. Start from the latest `master`

```bash
git switch master
git pull --ff-only origin master
```

### 2. Create a branch for your change

Use a short descriptive name:

```bash
git switch -c update-project-description
```

### 3. Edit the relevant Markdown page

Write with ordinary headings, paragraphs, links, and lists. Follow the existing page structure so the content remains
easy to scan.

For example, to add a project:

1. Open `docs/projects.md`.
1. Copy a similar project section.
1. Replace the title, factual labels, and description.
1. Move the section to the appropriate current or recent-project heading.
1. Run `make serve` and review the Projects page.
1. Run `make format`.
1. Run `make check`.
1. Review `git diff`.
1. Commit and push the feature branch.
1. Open a pull request.

The top navigation is the short `nav` list in `mkdocs.yml`. To add a future top-level section, create one Markdown file
in `docs/` and add one navigation entry.

### 4. Format and check your changes

```bash
make format
make check
git status
git diff
```

`make check` is the canonical pre-pull-request command and is exactly what the `quality` GitHub Actions job runs.

### 5. Commit your changes

```bash
git add <files>
git commit -m "Update project description"
```

Use a short commit message describing what changed.

### 6. Push your branch

```bash
git push -u origin update-project-description
```

### 7. Open a pull request on GitHub

Open a pull request from your branch into **`master`**. Briefly describe the change and request a review from a
colleague.

### 8. Address review comments

Make requested changes on the **same branch**, format and check again, then commit and push:

```bash
git add <files>
git commit -m "Address review comments"
git push
```

The pull request updates automatically. Because approvals become stale when new changes are pushed, the pull request
must be approved again.

### 9. Merge

Once the pull request is approved, `quality` passes, and all review conversations are resolved, use **Rebase and
merge**. Do not use a merge commit and do not push directly to `master`. The feature branch can be deleted after
merging.

## If GitHub reports a merge conflict

Only then, update your branch from `master`:

```bash
git fetch origin
git rebase origin/master
```

Resolve the reported conflicts, then continue:

```bash
git add <resolved-files>
git rebase --continue
```

Finally update your remote branch:

```bash
git push --force-with-lease
```

Then return to the pull request for review and approval.
