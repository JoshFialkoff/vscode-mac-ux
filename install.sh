#!/bin/bash

# Quick installer script for VS Code macOS UX optimizations
# Usage: curl -sSL https://raw.githubusercontent.com/JoshFialkoff/vscode-mac-ux/main/install.sh | bash

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}🍎 VS Code macOS UX Optimizer - Quick Install${NC}"
echo "================================================="
echo

# Check if VS Code is installed
VSCODE_DIR="$HOME/Library/Application Support/Code/User"
if [ ! -d "$VSCODE_DIR" ]; then
    echo -e "${RED}❌ VS Code not found.${NC} Please install VS Code first:"
    echo "   Download from: https://code.visualstudio.com/"
    exit 1
fi

echo -e "${GREEN}✅ VS Code found${NC}"

# Check for existing settings and offer backup
SETTINGS_FILE="$VSCODE_DIR/settings.json"
KEYBINDINGS_FILE="$VSCODE_DIR/keybindings.json"

backup_timestamp=$(date +%s)

if [ -f "$SETTINGS_FILE" ]; then
    cp "$SETTINGS_FILE" "$SETTINGS_FILE.backup.$backup_timestamp"
    echo -e "${GREEN}✅ Backed up existing settings.json${NC}"
fi

if [ -f "$KEYBINDINGS_FILE" ]; then
    cp "$KEYBINDINGS_FILE" "$KEYBINDINGS_FILE.backup.$backup_timestamp"
    echo -e "${GREEN}✅ Backed up existing keybindings.json${NC}"
fi

# Download and apply optimized settings
echo -e "${BLUE}📥 Downloading macOS optimized settings...${NC}"

# Download settings.json
curl -sSL "https://raw.githubusercontent.com/JoshFialkoff/vscode-mac-ux/main/settings.json" > "$SETTINGS_FILE"
echo -e "${GREEN}✅ Applied optimized settings.json${NC}"

# Download keybindings.json
curl -sSL "https://raw.githubusercontent.com/JoshFialkoff/vscode-mac-ux/main/keybindings.json" > "$KEYBINDINGS_FILE"
echo -e "${GREEN}✅ Applied macOS keybindings.json${NC}"

echo
echo -e "${BLUE}🎉 Installation Complete!${NC}"
echo
echo -e "${YELLOW}Next Steps:${NC}"
echo "1. ${BLUE}Restart VS Code${NC} to see all changes"
echo "2. ${BLUE}Test key features:${NC}"
echo "   • Native title bar (traffic lights on left)"
echo "   • Cmd+Left/Right for line navigation"
echo "   • Cmd+B to toggle sidebar"
echo "   • Auto-save after 1 second"
echo "   • Smooth scrolling"
echo
echo -e "${YELLOW}🔄 To rollback:${NC}"
echo "   cp \"$SETTINGS_FILE.backup.$backup_timestamp\" \"$SETTINGS_FILE\""
echo "   cp \"$KEYBINDINGS_FILE.backup.$backup_timestamp\" \"$KEYBINDINGS_FILE\""
echo
echo -e "${BLUE}📚 Full documentation:${NC}"
echo "   https://github.com/JoshFialkoff/vscode-mac-ux"
echo
echo -e "${GREEN}Enjoy your optimized macOS VS Code experience! 🚀${NC}"