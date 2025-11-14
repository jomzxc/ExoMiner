#!/bin/bash
# Quick start script for running the ExoMiner vetting catalog locally

echo "🌎 Starting ExoMiner Vetting Catalog 🪐"
echo "========================================"
echo ""

# Check if Python is installed
if ! command -v python &> /dev/null; then
    echo "Error: Python is not installed or not in PATH"
    exit 1
fi

echo "Python version: $(python --version)"
echo ""

# Check if requirements are installed
echo "Checking dependencies..."
if ! python -c "import dash" 2>/dev/null; then
    echo "Installing dependencies from requirements.txt..."
    pip install -r requirements.txt
    echo ""
fi

echo "Starting the application..."
echo "The app will be available at: http://localhost:8050"
echo "Press Ctrl+C to stop the server"
echo ""

# Run the application from the project root
python exominer_vetting_pc_catalog_dash-render-web-app/vetting_tce_catalog_exominer_dash_app.py
