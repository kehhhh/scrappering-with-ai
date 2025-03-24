# Scrappering with AI

A powerful web scraping tool that combines Crawl4AI for asynchronous web scraping, Groq's DeepSeek LLM for intelligent data extraction, and Pydantic for data modeling. This tool is designed to intelligently extract structured data from websites using AI-powered content understanding.

## Features

- Asynchronous web scraping with Crawl4AI
- Intelligent data extraction using Groq's DeepSeek LLM
- Structured data modeling with Pydantic
- Cross-platform support (Windows, macOS, Linux)
- Easy setup with automated scripts
- Configurable through environment variables
- Rate limiting and polite crawling
- Duplicate detection
- Progress tracking and statistics
- CSV output with structured data

## Prerequisites

- Python 3.8 or higher
- Git
- Groq API key (get one at https://console.groq.com)

## Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/kehhhh/scrappering-with-ai.git
   cd scrappering-with-ai
   ```

2. Create and configure your environment:
   ```bash
   # Copy the example environment file
   cp .env.example .env

   # Edit .env with your settings
   # Required: Add your Groq API key
   # Optional: Configure other settings as needed
   ```

3. Run the setup script for your operating system:

   ### Windows
   ```bash
   setup.bat
   ```

   ### macOS/Linux
   ```bash
   chmod +x setup.sh
   ./setup.sh
   ```

## Usage

1. Activate the virtual environment:
   ```bash
   # Windows
   venv\Scripts\activate.bat

   # macOS/Linux
   source venv/bin/activate
   ```

2. Run the scraper:
   ```bash
   python main.py
   ```

3. The script will:
   - Start crawling the configured URL
   - Extract venue information using AI
   - Save results to a CSV file
   - Display progress and statistics

4. Press Ctrl+C at any time to stop the crawler

## Configuration

The scraper can be configured through environment variables in the `.env` file:

```env
# Required
GROQ_API_KEY=your_groq_api_key_here

# Optional
BASE_URL=https://www.theknot.com/marketplace/wedding-reception-venues-atlanta-tx
CSS_SELECTOR=[class^='info-container']
BROWSER_HEADLESS=false
BROWSER_TYPE=chromium
REQUEST_DELAY=2.0
OUTPUT_FILE=complete_venues.csv
```

### Configuration Options

- `GROQ_API_KEY`: Your Groq API key (required)
- `BASE_URL`: The URL to scrape (default: TheKnot Atlanta venues)
- `CSS_SELECTOR`: CSS selector for content extraction
- `BROWSER_HEADLESS`: Run browser in headless mode (true/false)
- `BROWSER_TYPE`: Browser type (chromium/firefox/webkit)
- `REQUEST_DELAY`: Delay between requests in seconds
- `OUTPUT_FILE`: Name of the output CSV file

## Project Structure

```
scrappering-with-ai/
├── main.py              # Main script
├── config.py           # Configuration settings
├── models/             # Data models
│   └── venue.py       # Venue data model
├── utils/              # Utility functions
│   ├── data_utils.py  # Data processing utilities
│   └── scraper_utils.py # Scraping utilities
├── requirements.txt    # Dependencies
├── setup.sh           # Setup script for Unix-based systems
├── setup.bat          # Setup script for Windows
├── .env.example       # Example environment configuration
└── .env               # Your environment configuration (not in repo)
```

## Output

The scraper generates a CSV file containing structured venue data with the following fields:
- name
- price
- location
- capacity
- rating
- reviews
- description

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- [Crawl4AI](https://github.com/BerriAI/crawl4ai) for the web scraping capabilities
- [Groq](https://groq.com) for providing the DeepSeek LLM
- [Pydantic](https://pydantic-docs.helpmanual.io/) for data validation 