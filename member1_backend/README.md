# Member 1 - Backend Development

**Name**: Muhammad Waqar ul Mulk  
**ID**: FA22-BSE-153  
**Role**: Backend Lead

## Responsibilities

- Implement core Flask routes and business logic in `../main/app.py`
- Create API endpoints and data handling logic
- Write backend-focused unit tests
- Work on database integration (if needed)

## Your Working Directory

Use this `member1_backend/` folder for:
- Experimenting with new routes before adding to main
- Backend-specific documentation
- API design drafts
- Backend utilities and helpers

## Branch Workflow

1. Create your branch:
   ```pwsh
   git checkout -b backend
   ```

2. Make changes in `../main/app.py` or this directory

3. Commit and push:
   ```pwsh
   git add .
   git commit -m "Add: new endpoint for user management"
   git push origin backend
   ```

4. Create a Pull Request on GitHub to merge into `main`

## Testing Your Changes

Before pushing, always run tests:

```pwsh
cd ../main
.\.venv\Scripts\Activate.ps1
python -m pytest -v tests/
```

## Tasks Checklist

- [ ] Review current routes in `../main/app.py`
- [ ] Add additional API endpoints as needed
- [ ] Write unit tests for new endpoints
- [ ] Update API documentation
- [ ] Create at least one Pull Request
- [ ] Review and approve PRs from other members
