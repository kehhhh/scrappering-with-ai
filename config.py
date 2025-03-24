"""
Configuration settings for the web scraper.
"""

import os
from typing import List

# Base URL for the website to scrape
BASE_URL = os.getenv(
    "BASE_URL",
    "https://www.theknot.com/marketplace/wedding-reception-venues-atlanta-tx"
)

# CSS selector to target the content
CSS_SELECTOR = os.getenv(
    "CSS_SELECTOR",
    "[class^='info-container']"
)

# Required fields for each venue
REQUIRED_KEYS: List[str] = [
    "name",
    "price",
    "location",
    "capacity",
    "rating",
    "reviews",
    "description",
]

# Browser configuration
BROWSER_TYPE = os.getenv("BROWSER_TYPE", "chromium")
BROWSER_HEADLESS = os.getenv("BROWSER_HEADLESS", "false").lower() == "true"

# Rate limiting
REQUEST_DELAY = float(os.getenv("REQUEST_DELAY", "2.0"))  # seconds between requests

# Output configuration
OUTPUT_FILE = os.getenv("OUTPUT_FILE", "complete_venues.csv") 