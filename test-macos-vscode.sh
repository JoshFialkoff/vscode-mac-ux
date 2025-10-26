#!/bin/bash

# macOS VS Code Optimization Test Script
# This script helps you test the macOS optimizations before applying them permanently

echo "🍎 macOS VS Code Optimization Tester"
echo "===================================="
echo

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Get VS Code settings directory
VSCODE_DIR="$HOME/Library/Application Support/Code/User"
SETTINGS_FILE="$VSCODE_DIR/settings.json"
KEYBINDINGS_FILE="$VSCODE_DIR/keybindings.json"
CONFIG_DIR="$HOME/macos-vscode-config"

echo -e "${BLUE}VS Code Settings Location:${NC} $VSCODE_DIR"
echo

# Test 1: Check VS Code installation
echo -e "${BLUE}Test 1: VS Code Installation${NC}"
if [ -d "$VSCODE_DIR" ]; then
    echo -e "${GREEN}✅${NC} VS Code user directory found"
else
    echo -e "${RED}❌${NC} VS Code user directory not found"
    echo "  Please run VS Code at least once to create the user directory"
    exit 1
fi

if command -v code &> /dev/null; then
    echo -e "${GREEN}✅${NC} VS Code CLI is available"
else
    echo -e "${YELLOW}⚠️${NC} VS Code CLI not found (optional)"
    echo "  You can install it via: View > Command Palette > 'Shell Command: Install code command in PATH'"
fi
echo

# Test 2: Backup existing settings
echo -e "${BLUE}Test 2: Backup Current Settings${NC}"
if [ -f "$SETTINGS_FILE" ]; then
    cp "$SETTINGS_FILE" "$SETTINGS_FILE.backup.$(date +%s)"
    echo -e "${GREEN}✅${NC} Backed up existing settings.json"
else
    echo -e "${BLUE}ℹ️${NC} No existing settings.json found (will create new)"
fi

if [ -f "$KEYBINDINGS_FILE" ]; then
    cp "$KEYBINDINGS_FILE" "$KEYBINDINGS_FILE.backup.$(date +%s)"
    echo -e "${GREEN}✅${NC} Backed up existing keybindings.json"
else
    echo -e "${BLUE}ℹ️${NC} No existing keybindings.json found (will create new)"
fi
echo

# Test 3: Check current VS Code settings
echo -e "${BLUE}Test 3: Current VS Code Settings${NC}"
if [ -f "$SETTINGS_FILE" ]; then
    # Check for some current settings
    if grep -q "titleBarStyle" "$SETTINGS_FILE" 2>/dev/null; then
        current_titlebar=$(grep "titleBarStyle" "$SETTINGS_FILE" | head -1)
        echo "Current title bar style: $current_titlebar"
    fi
    
    if grep -q "fontFamily" "$SETTINGS_FILE" 2>/dev/null; then
        current_font=$(grep "fontFamily" "$SETTINGS_FILE" | head -1)
        echo "Current font family: $current_font"
    fi
else
    echo -e "${BLUE}ℹ️${NC} No current settings to display"
fi
echo

# Test 4: Apply macOS optimizations temporarily
echo -e "${BLUE}Test 4: Apply macOS Optimizations${NC}"
echo "This will temporarily apply the macOS optimizations to your VS Code settings."
echo "Your original settings have been backed up."
echo
read -p "Do you want to proceed? (y/N): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    # Apply the optimized settings
    cat > "$SETTINGS_FILE" << 'EOF'
{
  "window.titleBarStyle": "native",
  "window.nativeFullScreen": true,
  "window.nativeTabs": true,
  "editor.smoothScrolling": true,
  "workbench.list.smoothScrolling": true,
  "terminal.integrated.smoothScrolling": true,
  "editor.scrollbar.horizontal": "auto",
  "editor.scrollbar.vertical": "auto",
  "editor.fontFamily": "SF Mono, Monaco, 'Cascadia Code', 'Fira Code', Consolas, 'Courier New', monospace",
  "terminal.integrated.fontFamily": "SF Mono, Monaco, 'Cascadia Code', monospace",
  "editor.fontLigatures": true,
  "editor.fontSize": 13,
  "editor.lineHeight": 1.5,
  "window.autoDetectColorScheme": true,
  "workbench.preferredDarkColorTheme": "Default Dark Modern",
  "workbench.preferredLightColorTheme": "Default Light Modern",
  "window.restoreWindows": "all",
  "window.closeWhenEmpty": true,
  "files.autoSave": "afterDelay",
  "files.autoSaveDelay": 1000,
  "files.trimTrailingWhitespace": true,
  "files.insertFinalNewline": true,
  "files.eol": "\n",
  "editor.formatOnSave": true,
  "editor.wordWrap": "bounded",
  "editor.wordWrapColumn": 120,
  "editor.bracketPairColorization.enabled": true,
  "terminal.integrated.defaultProfile.osx": "zsh",
  "workbench.iconTheme": "vs-seti",
  "explorer.compactFolders": true,
  "search.exclude": {
    "**/node_modules": true,
    "**/.git": true,
    "**/.DS_Store": true
  },
  "files.watcherExclude": {
    "**/.git/objects/**": true,
    "**/node_modules/*/**": true,
    "**/.DS_Store": true
  },
  "editor.accessibilitySupport": "auto",
  "workbench.reduceMotion": "auto",
  "telemetry.telemetryLevel": "error",
  "git.enableSmartCommit": true,
  "git.autofetch": true,
  "breadcrumbs.enabled": true
}
EOF

    echo -e "${GREEN}✅${NC} Applied macOS optimized settings"
    
    # Create simplified keybindings
    cat > "$KEYBINDINGS_FILE" << 'EOF'
[
  {
    "key": "cmd+left",
    "command": "cursorHome",
    "when": "textInputFocus"
  },
  {
    "key": "cmd+right",
    "command": "cursorEnd",
    "when": "textInputFocus"
  },
  {
    "key": "alt+left",
    "command": "cursorWordLeft",
    "when": "textInputFocus"
  },
  {
    "key": "alt+right",
    "command": "cursorWordRight",
    "when": "textInputFocus"
  },
  {
    "key": "cmd+`",
    "command": "workbench.action.quickSwitchWindow"
  },
  {
    "key": "cmd+b",
    "command": "workbench.action.toggleSidebarVisibility"
  }
]
EOF

    echo -e "${GREEN}✅${NC} Applied macOS optimized keybindings"
    echo
    echo -e "${YELLOW}🔄 Please restart VS Code to see all changes take effect${NC}"
    echo
else
    echo "Skipping settings application."
fi

# Test 5: Testing instructions
echo -e "${BLUE}Test 5: What to Test${NC}"
echo "After restarting VS Code, test these features:"
echo
echo "Visual Changes:"
echo "• Native title bar with traffic lights on the left"
echo "• SF Mono font in editor and terminal"
echo "• Smooth scrolling when using mouse wheel"
echo "• Auto-hiding scrollbars"
echo
echo "Keyboard Shortcuts:"
echo "• Cmd+Left/Right - Move to beginning/end of line"
echo "• Option+Left/Right - Move by word"
echo "• Cmd+\` - Switch between VS Code windows"
echo "• Cmd+B - Toggle sidebar"
echo
echo "Behavior:"
echo "• Files auto-save after 1 second of inactivity"
echo "• Window restoration when restarting VS Code"
echo "• Theme follows system appearance"
echo

# Test 6: Rollback instructions
echo -e "${BLUE}Test 6: Rollback Instructions${NC}"
echo "To restore your original settings:"
echo
echo "1. Find your backup files:"
ls -la "$VSCODE_DIR"/*.backup.* 2>/dev/null | tail -2
echo
echo "2. Run this command to restore the most recent backup:"
echo "   latest_backup=\$(ls -t \"$VSCODE_DIR\"/settings.json.backup.* 2>/dev/null | head -1)"
echo "   if [ -n \"\$latest_backup\" ]; then cp \"\$latest_backup\" \"$SETTINGS_FILE\"; fi"
echo
echo "   latest_kb_backup=\$(ls -t \"$VSCODE_DIR\"/keybindings.json.backup.* 2>/dev/null | head -1)"
echo "   if [ -n \"\$latest_kb_backup\" ]; then cp \"\$latest_kb_backup\" \"$KEYBINDINGS_FILE\"; fi"
echo
echo "3. Restart VS Code"

echo
echo -e "${GREEN}🎉 Test setup complete!${NC}"
echo "Restart VS Code and try out the macOS optimizations."
echo "If you like them, you can keep the settings as they are."
echo "If not, use the rollback instructions above."