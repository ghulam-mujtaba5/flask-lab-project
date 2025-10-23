# Member 3 - DevOps & CI/CD

**Role**: DevOps Engineer

## Responsibilities

- Maintain `../main/Dockerfile` for containerization
- Configure and update `../.github/workflows/ci-cd.yml`
- Set up CI/CD pipeline automation
- Manage Docker builds and deployments
- Ensure tests run automatically on PRs
- Configure Docker Hub integration (optional)

## Your Working Directory

Use this `member3_devops/` folder for:
- Docker-compose configurations
- Deployment scripts
- Infrastructure documentation
- CI/CD pipeline experiments

## Branch Workflow

1. Create your branch:
   ```pwsh
   git checkout -b devops
   ```

2. Make changes in `../main/Dockerfile`, `../.github/workflows/` or this directory

3. Commit and push:
   ```pwsh
   git add .
   git commit -m "Update: CI pipeline to include Docker Hub push"
   git push origin devops
   ```

4. Create a Pull Request on GitHub to merge into `main`

## Testing Docker Locally

Build and test the Docker image:

```pwsh
cd ../main
docker build -t flask-lab-project:latest .
docker run -p 5000:5000 flask-lab-project:latest
```

Visit http://127.0.0.1:5000/ to verify the containerized app works.

## CI/CD Pipeline

The GitHub Actions workflow automatically:
1. Runs unit tests with pytest
2. Builds Docker image
3. Optionally pushes to Docker Hub (if secrets configured)

### Setting Up Docker Hub (Optional)

Add repository secrets in GitHub:
- `DOCKERHUB_USERNAME`: Your Docker Hub username
- `DOCKERHUB_TOKEN`: Your Docker Hub access token

## Tasks Checklist

- [ ] Review and test current `../main/Dockerfile`
- [ ] Verify CI/CD pipeline runs successfully
- [ ] Add Docker Hub push capability (optional)
- [ ] Create deployment documentation
- [ ] Test Docker image locally
- [ ] Create at least one Pull Request
- [ ] Review and approve PRs from other members
- [ ] Take screenshots of successful CI/CD runs for submission
