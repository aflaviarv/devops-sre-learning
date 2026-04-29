# What is Git and GitHub?
[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Fira+Code&pause=1000&color=2835B8&width=435&lines=Git+basics;Commiting+is+not+that+hard)](https://git.io/typing-svg)

## Git
Git is a **distributed version control system** that allows multiple developers to work on the same codebase simultaneously while maintaining their own local copies. It helps track changes, manage collaboration, and enables easy rollbacks when necessary.

## GitHub
GitHub, on the other hand, is a **cloud-based hosting platform** for Git repositories. It facilitates collaboration among developers, allowing them to share, review, and contribute to code without needing to store everything locally.

Git provides version control through the **command line**, while GitHub acts as a **remote repository** where code can be stored, managed, and shared. This separation ensures that changes can be tracked and reverted easily, improving project stability and team coordination.

---

## Essential Git Commands

Here are some fundamental Git commands along with examples:

### Initializing and Cloning Repositories
- `git init` → Initializes a new Git repository in a directory.
  ```sh
  git init
  ```
- `git clone <repository_url>` → Clones an existing repository to your local machine.
  ```sh
  git clone https://github.com/user/repo.git
  ```

### Staging and Committing Changes
- `git add .` → Adds all changed files to the staging area.
  ```sh
  git add .
  ```
- `git commit -m "Commit message"` → Commits staged changes with a descriptive message.
  ```sh
  git commit -m "Fixed login issue"
  ```
- `git status` → Shows the current state of the repository (staged, unstaged, and untracked files).
  ```sh
  git status
  ```

### Branching and Merging
- `git branch` → Lists all local branches and highlights the active branch.
  ```sh
  git branch
  ```
- `git branch <branch_name>` → Creates a new branch.
  ```sh
  git branch feature-login
  ```
- `git checkout <branch_name>` → Switches to a specific branch.
  ```sh
  git checkout feature-login
  ```
- `git merge <branch_name>` → Merges changes from one branch into another.
  ```sh
  git merge feature-login
  ```

### Working with Remote Repositories
- `git remote -v` → Displays configured remote repositories.
  ```sh
  git remote -v
  ```
- `git remote add <name> <URL>` → Adds a new remote repository.
  ```sh
  git remote add origin https://github.com/user/repo.git
  ```
- `git push origin <branch>` → Pushes local commits to the remote repository.
  ```sh
  git push origin main
  ```
- `git pull` → Fetches and merges changes from the remote repository.
  ```sh
  git pull
  ```
- `git fetch` → Retrieves the latest updates from the remote repository without merging them.
  ```sh
  git fetch
  ```

### Undoing Changes
- `git reset <file>` → Unstages a file without deleting changes.
  ```sh
  git reset index.html
  ```
- `git rm <file>` → Removes a file from the repository and stages it for commit.
  ```sh
  git rm old_script.js
  ```
- `git diff` → Shows differences between files that have not yet been staged.
  ```sh
  git diff
  ```

---

## Authentication: Username & Password, Token, and SSH Keys

### Why Password Authentication is No Longer Secure
Traditional **username and password authentication** is no longer considered secure due to the risks of credential leaks. Instead, developers should use **multi-factor authentication (MFA)**, which includes:
- SMS codes
- Authentication apps (e.g., Google Authenticator, Microsoft Authenticator)
- Physical security keys

### Using SSH Keys for Authentication
An alternative to passwords is **SSH keys**, which provide a more secure way to connect to remote repositories without requiring MFA. SSH keys work by creating a pair of cryptographic keys:
1. **Public key** → Stored on the remote server (e.g., GitHub).
2. **Private key** → Stored locally on your machine.

#### Generating and Adding an SSH Key
```sh
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```
- Add the generated SSH key to GitHub under `Settings → SSH and GPG keys`.
- Test the connection:
  ```sh
  ssh -T git@github.com
  ```

---

## Deployment Keys, SSO (Single Sign-On), and LDAP

### Deployment Keys
Deployment keys provide **read-only or read-write access** to a repository. They are commonly used in automated systems (e.g., CI/CD pipelines) where full user authentication is not necessary.

Example use case:
- A deployment server needs to pull the latest changes from a private repository.
- Instead of using a developer’s SSH key, a **deployment key** is added with limited permissions.

### SSO (Single Sign-On)
**Single Sign-On (SSO)** allows users to authenticate across multiple services using a single identity provider, such as:
- Google Workspace
- Microsoft Azure Active Directory
- Okta

SSO simplifies access management in enterprises, reducing the need for multiple login credentials.

### LDAP (Lightweight Directory Access Protocol)
LDAP is a protocol used to manage and authenticate users within an organization’s directory service. It is commonly used in large enterprises for:
- Centralized user authentication.
- Role-based access control.
- Managing permissions across multiple applications.

Example:
- A company with thousands of employees uses LDAP to control access to internal tools and resources based on department roles.

---

## Conclusion
Understanding Git and GitHub is essential for any developer. By mastering these tools, you can efficiently manage code changes, collaborate with teams, and ensure a seamless development workflow. 

If you are new to Git, practice using the commands above in a test repository to build confidence before working on production projects.
