#!/bin/bash

echo "Bot Launcher"

if [ -f "requirements.txt" ]; then
    echo "Installing wheel for faster installation..."
    pip install wheel
    
    echo "Installing requests..."
    pip install requests
    
    echo "Installing dependencies..."
    pip install -r requirements.txt
    
    echo ""
    echo "Starting the bot..."
    python bot.py
else
    echo "requirements.txt not found, skipping dependency installation."
fi

echo "failed"