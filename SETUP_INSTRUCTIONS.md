# Manual GitHub Repository Setup Guide

## Option 1: Using GitHub CLI (Recommended)

### Step 1: Refresh your GitHub authentication with required scopes

Run this command and follow the browser prompts:

```powershell
gh auth login -h github.com -s repo,workflow -w
```

This will:
1. Open your browser
2. Show you a one-time code
3. Ask you to authorize GitHub CLI with the required permissions

### Step 2: Create the repository

After authentication, run:

```powershell
cd "e:\Devops Lab assigment no 3\flask_lab_project"
gh repo create flask-lab-project --public --source=. --remote=origin --push
```

### Step 3: Add collaborators

You'll need their **GitHub usernames** (not their student IDs). Replace the placeholders:

```powershell
gh api /repos/ghulam-mujtaba5/flask-lab-project/collaborators/Mwaqarulmulk -X PUT
```

---

## Option 2: Using GitHub Web Interface (Easier)

### Step 1: Create repository on GitHub

1. Go to: https://github.com/new
2. Repository name: `flask-lab-project`
3. Description: "Flask CI/CD Lab Project with Docker"
4. Select: **Public**
5. **DO NOT** initialize with README (we already have one)
6. Click "Create repository"

### Step 2: Push your local code

Run these commands in PowerShell:

```powershell
cd "e:\Devops Lab assigment no 3\flask_lab_project"

# Add the remote
git remote add origin https://github.com/ghulam-mujtaba5/flask-lab-project.git

# Rename branch to main if needed
git branch -M main

# Push to GitHub
git push -u origin main
```

### Step 3: Add collaborators via web

1. Go to: https://github.com/ghulam-mujtaba5/flask-lab-project/settings/access
2. Click "Add people"
3. Search for your teammate by GitHub username:
   - Muhammad Waqar ul Mulk (FA22-BSE-153) - GitHub: **Mwaqarulmulk**
4. Select "Write" permission
5. Click "Add to repository"

### Step 4: Verify everything works

1. Check Actions tab: https://github.com/ghulam-mujtaba5/flask-lab-project/actions
2. The CI/CD pipeline should run automatically after the first push
3. Take a screenshot of the successful run for submission

---

## Quick Commands Summary

```powershell
# Navigate to project
cd "e:\Devops Lab assigment no 3\flask_lab_project"

# Check git status
git status

# Push to GitHub (after creating repo on web)
git remote add origin https://github.com/ghulam-mujtaba5/flask-lab-project.git
git branch -M main
git push -u origin main
```

---

## Testing Docker Locally

Before submission, test the Docker image:

```powershell
cd "e:\Devops Lab assigment no 3\flask_lab_project\main"
docker build -t flask-lab-project:latest .
docker run -p 5000:5000 flask-lab-project:latest
```

Visit: http://127.0.0.1:5000/

Take a screenshot showing the app running in Docker!

---

## Submission Checklist

- [ ] GitHub repository created: `flask-lab-project`
- [ ] All code pushed to `main` branch
- [ ] Both collaborators added with write access
- [ ] CI/CD pipeline runs successfully (check Actions tab)
- [ ] Screenshot of successful GitHub Actions run
- [ ] Screenshot of app running in Docker
- [ ] README.md with team member names and roles
- [ ] Each member creates their own branch (backend, frontend, devops)

---

## Next Steps for Team Members

Each member should:

1. Clone the repository:
   ```powershell
   git clone https://github.com/ghulam-mujtaba5/flask-lab-project.git
   cd flask-lab-project
   ```

2. Create their branch:
   ```powershell
   # Member 1 (Waqar - Backend)
   git checkout -b backend
   
   # Member 2 (Mujtaba - Frontend)
   git checkout -b frontend
   
   # Member 3 (DevOps)
   git checkout -b devops
   ```

3. Make changes and push:
   ```powershell
   git add .
   git commit -m "Your changes description"
   git push origin your-branch-name
   ```

4. Create Pull Request on GitHub to merge into `main`
