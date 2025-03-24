@echo off
echo Starting Scrappering with AI...

REM Check if virtual environment exists
if not exist "venv" (
    echo Virtual environment not found. Please run setup.bat first.
    exit /b 1
)

REM Activate virtual environment
call venv\Scripts\activate.bat

REM Check if .env file exists
if not exist ".env" (
    echo .env file not found. Please copy env.example to .env and configure it.
    exit /b 1
)

REM Check if main.py exists
if not exist "main.py" (
    echo main.py not found in current directory.
    exit /b 1
)

REM Run the scraper
echo Running the scraper...
python "%~dp0main.py"

REM Check if the command was successful
if errorlevel 1 (
    echo Error running the scraper. Please check the error message above.
    exit /b 1
)

REM Deactivate virtual environment
deactivate

echo Done! 