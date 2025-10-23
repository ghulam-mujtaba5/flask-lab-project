# GitHub Repository Setup Script
# This script will help you create the repo and push your code

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Flask Lab Project - GitHub Setup" -ForegroundColor Cyan
Write-Host "========================================`n" -ForegroundColor Cyan

# Navigate to project directory
Set-Location -Path "e:\Devops Lab assigment no 3\flask_lab_project"

Write-Host "Step 1: Opening GitHub to create new repository..." -ForegroundColor Green
Write-Host "Please create a new repository with these settings:" -ForegroundColor Yellow
Write-Host "  - Name: flask-lab-project" -ForegroundColor White
Write-Host "  - Description: Flask CI/CD Lab Project with Docker" -ForegroundColor White
Write-Host "  - Visibility: Public" -ForegroundColor White
Write-Host "  - DO NOT initialize with README (we have one)" -ForegroundColor Red
Write-Host "`nOpening GitHub in 3 seconds..." -ForegroundColor Yellow

Start-Sleep -Seconds 3
Start-Process "https://github.com/new"

Write-Host "`nWaiting for you to create the repository..." -ForegroundColor Yellow
Write-Host "Press ENTER after you've created the repository on GitHub" -ForegroundColor Cyan
Read-Host

Write-Host "\nStep 2: Configuring git remote..." -ForegroundColor Green
$username = Read-Host "Enter your GitHub username (currently: ghulam-mujtaba5)"
if ([string]::IsNullOrWhiteSpace($username)) {
    $username = "ghulam-mujtaba5"
}

# Remove existing remote if any
git remote remove origin 2>$null

# Add new remote
git remote add origin "https://github.com/$username/flask-lab-project.git"
Write-Host "✓ Remote configured: https://github.com/$username/flask-lab-project.git" -ForegroundColor Green

Write-Host "`nStep 3: Pushing code to GitHub..." -ForegroundColor Green
git branch -M main
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "`n✓ Code pushed successfully!" -ForegroundColor Green
    
    Write-Host "`nStep 4: Add collaborators..." -ForegroundColor Green
    Write-Host "Open this link to add team members:" -ForegroundColor Yellow
    Write-Host "https://github.com/$username/flask-lab-project/settings/access" -ForegroundColor Cyan
    Write-Host "`nAdd these collaborators with 'Write' permission:" -ForegroundColor Yellow
    Write-Host "  - Muhammad Waqar ul Mulk (FA22-BSE-153)" -ForegroundColor White
    Write-Host "  - Ghulam Mujtaba (FA22-BSE-199)" -ForegroundColor White
    
    Start-Sleep -Seconds 2
    Start-Process "https://github.com/$username/flask-lab-project/settings/access"
    
    Write-Host "`n========================================" -ForegroundColor Green
    Write-Host "✓ Setup Complete! 🎉" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Green
    Write-Host "`nNext steps:" -ForegroundColor Yellow
    Write-Host "1. Check GitHub Actions: https://github.com/$username/flask-lab-project/actions" -ForegroundColor White
    Write-Host "2. Take screenshot of successful CI/CD run" -ForegroundColor White
    Write-Host "3. Test Docker locally (see SETUP_INSTRUCTIONS.md)" -ForegroundColor White
    Write-Host "4. Share repo link with team members" -ForegroundColor White
} else {
    Write-Host "`n✗ Push failed. Check the error above." -ForegroundColor Red
    Write-Host "You may need to authenticate with GitHub." -ForegroundColor Yellow
}
