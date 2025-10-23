# ⚡ Quick Start Guide - Flask Lab Project

## 🚀 Get Started in 5 Minutes

### Step 1: Local Testing (3 minutes)

```powershell
# Navigate to project
cd "e:\flask_lab_project\main"

# Create and activate virtual environment
python -m venv .venv
.\.venv\Scripts\Activate.ps1

# Install dependencies
pip install -r requirements.txt

# Run the app
python app.py
```

**Open browser:** http://127.0.0.1:5000/

### Step 2: Run Tests (30 seconds)

```powershell
# Make sure you're in main/ directory and venv is activated
pytest -v tests/
```

**Expected Result:** ✅ 3/3 tests passed

### Step 3: Docker Test (2 minutes)

```powershell
# Make sure Docker Desktop is running
# Build image
docker build -t flask-lab-project:latest .

# Run container
docker run -p 5000:5000 flask-lab-project:latest
```

**Open browser:** http://localhost:5000/

---

## 📸 Screenshots Needed for Submission

### Screenshot 1: GitHub Actions Success ✅

**Where:** https://github.com/ghulam-mujtaba5/flask-lab-project/actions

**What to show:**
- Green checkmark ✓
- All steps passed
- Test results
- Build success

**How:**
1. Push any commit to trigger pipeline (or wait for automatic run)
2. Go to Actions tab
3. Click on latest workflow run
4. Wait for green checkmark
5. Take screenshot

---

### Screenshot 2: App Running in Docker 🐳

**Where:** http://localhost:5000/

**What to show:**
- Beautiful gradient homepage
- "Hello from Flask Lab" title
- API endpoints section
- Team members section
- Browser URL showing "localhost:5000"

**How:**
1. Start Docker Desktop
2. Build and run container (commands above)
3. Open browser to localhost:5000
4. Take screenshot of full page
5. *Bonus:* Include Docker Desktop showing running container

---

## 🧪 Testing the API

### Using the Web Interface

1. **Go to:** http://localhost:5000/
2. **Scroll down** to "Test the /data Endpoint"
3. **Fill in:**
   - Name: Your name
   - Message: Any message
4. **Click:** "Send Data"
5. **See:** JSON response displayed

### Using PowerShell

```powershell
# Test health endpoint
Invoke-WebRequest -Uri "http://localhost:5000/health"

# Test data endpoint
$body = @{
    name = "Test User"
    message = "Hello from PowerShell"
} | ConvertTo-Json

Invoke-RestMethod -Uri "http://localhost:5000/data" `
    -Method Post `
    -ContentType "application/json" `
    -Body $body
```

### Using curl

```powershell
# Test health
curl http://localhost:5000/health

# Test data endpoint
curl -X POST http://localhost:5000/data `
  -H "Content-Type: application/json" `
  -d '{\"name\":\"Test\",\"message\":\"Hello\"}'
```

---

## 🔄 Git Workflow for Team Members

### For Member 1 (Waqar - Backend)

```powershell
# Clone repo (first time only)
git clone https://github.com/ghulam-mujtaba5/flask-lab-project.git
cd flask-lab-project

# Create backend branch
git checkout -b backend

# Make changes to main/app.py or member1_backend/

# Commit and push
git add .
git commit -m "Add: new API endpoint for user data"
git push origin backend

# Create Pull Request on GitHub
# After approval, merge to main
```

### For Member 2 (Mujtaba - Frontend)

```powershell
# Clone repo (first time only)
git clone https://github.com/ghulam-mujtaba5/flask-lab-project.git
cd flask-lab-project

# Create frontend branch
git checkout -b frontend

# Make changes to main/templates/ or main/static/

# Commit and push
git add .
git commit -m "Add: new CSS animations and contact form"
git push origin frontend

# Create Pull Request on GitHub
# After approval, merge to main
```

### For Member 3 (DevOps)

```powershell
# Clone repo (first time only)
git clone https://github.com/ghulam-mujtaba5/flask-lab-project.git
cd flask-lab-project

# Create devops branch
git checkout -b devops

# Make changes to Dockerfile or .github/workflows/

# Commit and push
git add .
git commit -m "Update: CI/CD pipeline to include code coverage"
git push origin devops

# Create Pull Request on GitHub
# After approval, merge to main
```

---

## 📋 Submission Checklist

### Before Final Submission

- [ ] **All code is on GitHub**
  - Check: https://github.com/ghulam-mujtaba5/flask-lab-project

- [ ] **Tests pass locally**
  - Run: `pytest -v tests/`
  - Result: 3/3 passed ✅

- [ ] **Docker builds successfully**
  - Run: `docker build -t flask-lab-project:latest .`
  - Result: Successfully built ✅

- [ ] **App runs in Docker**
  - Run: `docker run -p 5000:5000 flask-lab-project:latest`
  - Visit: http://localhost:5000/
  - Result: Page loads ✅

- [ ] **CI/CD pipeline passes**
  - Check: Actions tab shows green checkmark ✅
  - Screenshot taken ✅

- [ ] **Docker screenshot taken**
  - Shows app running in browser ✅

- [ ] **Collaborators added**
  - Waqar: @Mwaqarulmulk ✅
  - Member 3: [To be added]

- [ ] **Each member created a branch**
  - backend branch ✅
  - frontend branch ✅
  - devops branch ⏳

- [ ] **At least 1 PR per member**
  - Member 1: ⏳
  - Member 2: ⏳
  - Member 3: ⏳

- [ ] **Documentation complete**
  - README.md ✅
  - SUBMISSION.md ✅
  - This file ✅

---

## 🆘 Common Issues

### "Port 5000 is already in use"

**Solution 1 - Kill the process:**
```powershell
Get-Process -Id (Get-NetTCPConnection -LocalPort 5000).OwningProcess | Stop-Process
```

**Solution 2 - Use different port:**
```powershell
# Modify app.py temporarily
app.run(host='0.0.0.0', port=5001, debug=True)
```

### "Docker build fails"

**Solutions:**
1. Make sure Docker Desktop is running
2. Check you're in `main/` directory: `cd main`
3. Try: `docker build --no-cache -t flask-lab-project:latest .`

### "Tests fail"

**Solutions:**
1. Activate venv: `.\.venv\Scripts\Activate.ps1`
2. Reinstall: `pip install -r requirements.txt`
3. Check Python version: `python --version` (need 3.11+)

### "CI/CD pipeline fails on GitHub"

**Solutions:**
1. Check Actions tab for detailed error logs
2. Make sure tests pass locally first
3. Verify the workflow file syntax
4. Try pushing a small change to trigger again

---

## 🎯 Next Steps

1. ✅ **Run local tests** - Make sure everything works on your machine
2. ✅ **Test Docker** - Build and run the container
3. ⏳ **Get screenshots** - CI/CD success + Docker running
4. ⏳ **Team collaboration** - Each member makes a branch and PR
5. ⏳ **Final review** - Check all requirements met
6. ⏳ **Submit** - Provide GitHub link + screenshots

---

## 📞 Support

### Repository
https://github.com/ghulam-mujtaba5/flask-lab-project

### Check Pipeline Status
https://github.com/ghulam-mujtaba5/flask-lab-project/actions

### Documentation
- Main README: `README.md`
- Full submission doc: `SUBMISSION.md`
- Setup guide: `SETUP_INSTRUCTIONS.md`

---

## ⏱️ Time Estimate

- **Local setup and testing:** 5 minutes
- **Docker testing:** 2 minutes
- **Taking screenshots:** 3 minutes
- **Creating branches and PRs:** 5 minutes per member
- **Total:** ~20-25 minutes

---

**Status:** ✅ Ready for final testing and submission!

**Last Updated:** October 23, 2025
