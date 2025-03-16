# 📌 Branching and Merging in Git

This document is part of the **Git and GitHub** section in the `devops-sre-learning` repository. It focuses on branching, merging, and collaborative workflows using Git.

## 🗂 Repository
A **repository** is where we store all our source code and track changes over time. It allows version control, collaboration, and rollback capabilities if necessary.

## 🌿 Branches
**Branches** are independent lines of development that let us work on features or fixes without affecting the main codebase. This helps prevent unnecessary failures and ensures isolated testing before merging.

### Example:
```bash
# Create a new branch
git checkout -b feature/new-feature

# Switch between branches
git checkout main

# List all branches
git branch
```

## 🔄 Merging Branches
Once changes in a branch are complete and tested, they are merged back into the main branch.

### Merge Workflow:
1. Switch to the main branch:
   ```bash
   git checkout main
   ```
2. Update it to the latest version:
   ```bash
   git pull origin main
   ```
3. Merge the feature branch:
   ```bash
   git merge feature/new-feature
   ```
4. Push the updated main branch:
   ```bash
   git push origin main
   ```

## 🔄 Pull Request (PR)
A **Pull Request (PR)** is a request to merge changes from a branch into the main codebase. This step includes code review before merging to ensure code quality and functionality.

### PR Workflow:
1. Create a new branch.
2. Make changes and commit them.
3. Push the branch to the remote repository.
4. Open a pull request on GitHub/GitLab/Bitbucket.
5. Wait for approval and merge.

```bash
# Push a new branch to remote
git push origin feature/new-feature
```

## 🍴 Fork
A **fork** is a personal copy of another user’s repository. It allows making changes without affecting the original project. You can submit a **Pull Request** to suggest changes to the original repo.

> **`git clone` ≠ Fork**
>
> - `git clone` copies a repository to your local machine for work.
> - A **fork** creates a separate instance of the repository under your GitHub account.

## 🏷 Tags
Tags are used to mark specific points in the repository's history, typically used for versioning.

### Example:
```bash
# Create a new tag
git tag -a v1.1 -m "Version 1.1"

# Push the tag to the remote repository
git push origin v1.1
```

## 🚀 Releases
Releases are built upon tags but include additional information such as release notes and downloadable assets.

### Key Differences:
- **Tags**: Just a marker.
- **Releases**: More detailed documentation, changelogs, and assets.

## 📄 Gists
Gists allow sharing small code snippets or text files publicly or privately. It is commonly used for quick sharing of scripts, configuration files, or notes.

## 🐞 Issues
Issues are used to track bugs, enhancements, and tasks related to a repository. Each issue gets a unique number and can be referenced in commits.

### Example:
```bash
# Commit message linking an issue
git commit -m "Fixed login issue (fixed #2)"
```

---
By following these Git best practices, you ensure efficient collaboration and maintain a clean codebase! 🚀
