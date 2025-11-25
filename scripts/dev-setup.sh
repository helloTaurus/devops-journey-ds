#!/bin/bash

echo "🚀 Starting DevOps Environment Setup..."
echo "This may take a few minutes."

# Update package list
echo "📦 Updating package list..."
sudo apt update

# Install essential tools
echo "🔧 Installing essential tools..."
sudo apt install -y curl wget git unzip tree htop

# Install Python3 and pip
echo "🐍 Installing Python3 and pip..."
sudo apt install -y python3 python3-pip

# Install a useful Python package for DevOps
echo "📊 Installing Python DevOps tools..."
pip3 install requests flask

# Create a useful aliases file
echo "🎛️  Setting up useful aliases..."
cat >> ~/.bash_aliases << EOF
# DevOps Aliases
alias ll='ls -la'
alias cls='clear'
alias ..='cd ..'
alias ...='cd ../..'
alias grep='grep --color=auto'
alias df='df -h'
alias du='du -h'
alias myip='curl ifconfig.me'
EOF

# Reload bash configuration
source ~/.bashrc

echo ""
echo "✅ Setup complete!"
echo "💡 New aliases available. Restart your terminal or run 'source ~/.bashrc'"
