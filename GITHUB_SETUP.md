# GitHub Setup Instructions

## Option 1: Update GitHub CLI Token (Recommended)

1. Re-authenticate gh CLI with required scopes:
```pwsh
gh auth login
```

2. When prompted:
   - Choose "GitHub.com"
   - Choose "HTTPS"
   - Choose "Login with a web browser"
   - Follow the browser authentication flow
   - Make sure to grant `public_repo` scope

3. After re-authentication, create the repo:
```pwsh
Set-Location -Path "e:\Devops Lab assigment no 3\flask_lab_project"
gh repo create flask-lab-project --public --source=. --remote=origin --push
```

## Option 2: Create Repo via GitHub Web

1. Go to https://github.com/new
2. Set repository name: `flask-lab-project`
3. Choose "Public"
4. Do NOT initialize with README, .gitignore, or license (we already have them)
5. Click "Create repository"

6. Push your local code:
```pwsh
Set-Location -Path "e:\Devops Lab assigment no 3\flask_lab_project"
git remote add origin https://github.com/YOUR_USERNAME/flask-lab-project.git
git branch -M main
git push -u origin main
```

## Add Collaborators

### Via GitHub CLI (after fixing token):
```pwsh
gh repo add-collaborator YOUR_USERNAME/flask-lab-project COLLABORATOR1_USERNAME
gh repo add-collaborator YOUR_USERNAME/flask-lab-project COLLABORATOR2_USERNAME
```

### Via GitHub Web:
1. Go to your repo: https://github.com/YOUR_USERNAME/flask-lab-project
2. Click "Settings" → "Collaborators and teams"
3. Click "Add people"
4. Enter each collaborator's GitHub username
5. Choose role: "Write" (allows push access)

## Verify CI/CD Pipeline

1. After pushing, go to: https://github.com/YOUR_USERNAME/flask-lab-project/actions
2. You should see the CI/CD workflow running
3. Wait for it to complete (green checkmark = success)
4. Take a screenshot for submission

## Test Docker Locally

Before taking screenshots, test the Docker build:

```pwsh
Set-Location -Path "e:\Devops Lab assigment no 3\flask_lab_project"
docker build -t flask-lab-project:latest ./main
docker run -p 5000:5000 flask-lab-project:latest
```

Open browser: http://localhost:5000

Take a screenshot showing the app running in Docker.

## Optional: Push to Docker Hub

If you want the CI/CD to push images to Docker Hub:

1. Create Docker Hub account (if needed): https://hub.docker.com/
2. Create access token: Account Settings → Security → New Access Token
3. Add secrets to your GitHub repo:
   - Go to repo Settings → Secrets and variables → Actions
   - Click "New repository secret"
   - Add `DOCKERHUB_USERNAME` (your Docker Hub username)
   - Add `DOCKERHUB_TOKEN` (the access token you created)
4. Next CI/CD run will automatically push to Docker Hub

## Current Git Status

Your local repo is initialized and committed. The structure is:
```
Branch: master (will be renamed to main on push)
Commit: "Initial commit: Flask lab project with CI/CD and Docker"
Remote: Not yet configured (waiting for repo creation)
```

## Next Steps

1. Choose Option 1 or 2 above to create the GitHub repo
2. Add your 2 collaborators
3. Verify CI/CD runs successfully
4. Test Docker build and run
5. Take screenshots for submission
6. Share repo link with team and instructor
