# Flask Lab Project

This repository is a lab for learning collaborative development with Flask, Docker, and GitHub Actions.

Repository structure

flask_lab_project/

- main/: Main Flask application
  - app.py: Flask app
  - requirements.txt: Python dependencies
  - Dockerfile: Container definition
  - tests/: Unit tests
  - templates/: HTML templates
  - static/: Static files
  - .github/workflows/ci-cd.yml: CI/CD pipeline
- member1_backend/: Backend work folder
- member2_frontend/: Frontend work folder
- member3_devops/: DevOps & CI/CD work folder

## Team Members

- **Member 1 (Backend Lead)**: Muhammad Waqar ul Mulk (FA22-BSE-153)
  - Implements core Flask routes in `main/app.py`
  - Works in `member1_backend/` directory
  
- **Member 2 (Frontend/API Integration)**: Ghulam Mujtaba (FA22-BSE-199)
  - Works on `templates/`, `static/` files and API endpoints
  - Works in `member2_frontend/` directory
  
- **Member 3 (DevOps Engineer)**: [Your Name]
  - Handles `Dockerfile`, testing, and `.github/workflows/ci-cd.yml`
  - Works in `member3_devops/` directory

How to run locally

1. Create a virtual environment and install dependencies:

```pwsh
python -m venv .venv
.\.venv\Scripts\Activate.ps1
pip install -r main/requirements.txt
```

2. Run the app:

```pwsh
python main/app.py
```

The app will be available at http://127.0.0.1:5000/

How to run tests

```pwsh
.\.venv\Scripts\Activate.ps1
pytest -q main/tests
```

Docker

Build the image:

```pwsh
docker build -t flask-lab-project:latest ./main
```

Run the container:

```pwsh
docker run -p 5000:5000 flask-lab-project:latest
```

CI/CD (GitHub Actions)

- Pipeline triggers on pushes and PRs to `main`.
- It runs tests, builds the Docker image, and can push to Docker Hub if credentials are set in repository secrets (`DOCKERHUB_USERNAME` and `DOCKERHUB_TOKEN`).

## Collaboration Workflow

### Step 1: Clone and Create Branches

Each member clones the repo and creates their own branch:

```pwsh
git clone https://github.com/YOUR_USERNAME/flask-lab-project.git
cd flask-lab-project
```

**Member 1 (Backend):**
```pwsh
git checkout -b backend
```

**Member 2 (Frontend):**
```pwsh
git checkout -b frontend
```

**Member 3 (DevOps):**
```pwsh
git checkout -b devops
```

### Step 2: Work in Your Directory

- **Member 1**: Work in `member1_backend/` and `main/app.py`
- **Member 2**: Work in `member2_frontend/`, `main/templates/`, `main/static/`
- **Member 3**: Work in `member3_devops/`, `main/Dockerfile`, `.github/workflows/`

### Step 3: Commit and Push

```pwsh
git add .
git commit -m "Your descriptive commit message"
git push origin your-branch-name
```

### Step 4: Create Pull Request

1. Go to GitHub repo
2. Click "Pull requests" → "New pull request"
3. Select your branch → `main`
4. Add description and request review
5. Wait for CI/CD checks to pass
6. Merge after approval

### Step 5: Adding Collaborators

The repo owner should add team members:

```pwsh
gh repo add-collaborator YOUR_USERNAME/flask-lab-project COLLABORATOR_USERNAME
```

Or via GitHub web:
1. Go to repo Settings → Collaborators
2. Click "Add people"
3. Enter GitHub usernames

## Submission Checklist

- [ ] GitHub repo link
- [ ] Screenshot of successful CI/CD run (from Actions tab)
- [ ] Screenshot of the app running via Docker
- [ ] README describing roles and how to build/test/run
- [ ] All team members added as collaborators
- [ ] At least one successful PR merge per member
