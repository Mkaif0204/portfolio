@echo off
echo ========================================================
echo   Push Mohd Kaif Portfolio to GitHub
echo ========================================================
echo.

set /p REPO_URL="Enter your GitHub Repository URL (e.g. https://github.com/Mkaif0204/portfolio.git): "

if "%REPO_URL%"=="" (
    echo No repository URL entered. Exiting.
    pause
    exit /b
)

echo.
echo Adding remote origin...
git remote remove origin 2>nul
git remote add origin %REPO_URL%

echo.
echo Pushing to GitHub (main branch)...
git branch -M main
git push -u origin main

echo.
echo ========================================================
echo   Done! To enable free hosting on GitHub Pages:
echo   1. Open your repo on GitHub
echo   2. Go to Settings -^> Pages
echo   3. Select Branch: 'main' and '/ (root)', then Save
echo ========================================================
echo.
pause
