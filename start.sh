#!/bin/bash

# Resume Ranker Pro - Startup Script for Linux/Mac

echo "🚀 Starting Resume Ranker Pro..."
echo ""

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed. Please install Python 3.8 or higher."
    exit 1
fi

# Check if virtual environment exists, create if not
if [ ! -d "venv" ]; then
    echo "📦 Creating virtual environment..."
    python3 -m venv venv
fi

# Activate virtual environment
echo "🔧 Activating virtual environment..."
source venv/bin/activate

# Install/update dependencies
echo "📥 Installing dependencies..."
pip install -q -r requirements.txt

# Run the application
echo ""
echo "✅ Starting application..."
echo "🌐 Open your browser at: http://localhost:8000"
echo ""
python run.py

