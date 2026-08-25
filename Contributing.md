# Contributing

> **Why this workflow?** All changes go through a short-lived branch and a reviewed pull request so that `master` stays clean, deployable, and easy to understand.

Do **not** commit or push directly to `master`.

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

### 3. Make and check your changes

Edit the files as needed.

For these sites, you can preview them locally by opening `index.html` in a browser.

Before committing:

```bash
git status
git diff
```

### 4. Commit your changes

```bash
git add <files>
git commit -m "Update project description"
```

Use a short commit message describing what changed.

### 5. Push your branch

```bash
git push -u origin update-project-description
```

### 6. Open a Pull Request on GitHub

Open a pull request from your branch into **`master`**.

Briefly describe what you changed and request a review from a colleague.

### 7. Address review comments

If changes are requested:

1. make the changes on the **same branch**;
2. commit them;
3. push again.

```bash
git add <files>
git commit -m "Address review comments"
git push
```

The pull request updates automatically.

Because approvals become stale when new changes are pushed, the pull request must be approved again.

### 8. Merge

Once the pull request is approved and all review conversations are resolved, use:

**Rebase and merge**

Do not use a merge commit and do not push directly to `master`.

After merging, the feature branch can be deleted.

---

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