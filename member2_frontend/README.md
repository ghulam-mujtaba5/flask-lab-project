# Member 2 - Frontend & API Integration

**Name**: Ghulam Mujtaba  
**ID**: FA22-BSE-199  
**Role**: Frontend/API Integration Lead

## Responsibilities

- Design and implement HTML templates in `../main/templates/`
- Create CSS/JS files in `../main/static/`
- Build frontend forms and user interfaces
- Integrate frontend with backend API endpoints
- Ensure responsive design

## Your Working Directory

Use this `member2_frontend/` folder for:
- Frontend prototypes and mockups
- Static assets (CSS, JS, images) before moving to main
- Frontend-specific documentation
- UI/UX planning

## Branch Workflow

1. Create your branch:
   ```pwsh
   git checkout -b frontend
   ```

2. Make changes in `../main/templates/`, `../main/static/` or this directory

3. Commit and push:
   ```pwsh
   git add .
   git commit -m "Add: responsive navigation and contact form"
   git push origin frontend
   ```

4. Create a Pull Request on GitHub to merge into `main`

## Testing Your Changes

Test the Flask app with your templates:

```pwsh
cd ../main
.\.venv\Scripts\Activate.ps1
python app.py
```

Visit http://127.0.0.1:5000/ in your browser to see changes.

## Tasks Checklist

- [ ] Review current `../main/templates/index.html`
- [ ] Add more HTML templates (e.g., about.html, contact.html)
- [ ] Create CSS styles in `../main/static/css/`
- [ ] Add JavaScript interactivity in `../main/static/js/`
- [ ] Test responsive design on different screen sizes
- [ ] Create at least one Pull Request
- [ ] Review and approve PRs from other members
