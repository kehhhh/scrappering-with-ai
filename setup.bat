@echo off
echo Setting up Scrappering with AI...

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo Python is not installed. Please install Python first.
    exit /b 1
)

REM Create virtual environment
echo Creating virtual environment...
python -m venv venv

REM Activate virtual environment
echo Activating virtual environment...
call venv\Scripts\activate.bat

REM Install requirements
echo Installing requirements...
pip install -r requirements.txt

REM Install Playwright browsers
echo Installing Playwright browsers...
playwright install

echo Setup complete! To start scraping:
echo 1. Activate the virtual environment: venv\Scripts\activate.bat
echo 2. Run the script: python main.py 