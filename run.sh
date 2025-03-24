#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}Starting Scrappering with AI...${NC}"

# Check if virtual environment exists
if [ ! -d "venv" ]; then
    echo -e "${RED}Virtual environment not found. Please run setup.sh first.${NC}"
    exit 1
fi

# Activate virtual environment
source venv/bin/activate

# Check if .env file exists
if [ ! -f ".env" ]; then
    echo -e "${RED}.env file not found. Please copy env.example to .env and configure it.${NC}"
    exit 1
fi

# Run the scraper
echo -e "${GREEN}Running the scraper...${NC}"
python main.py

# Deactivate virtual environment
deactivate

echo -e "${BLUE}Done!${NC}" 