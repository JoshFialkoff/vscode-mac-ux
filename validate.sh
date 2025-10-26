#!/bin/bash

# VS Code macOS Settings Validator
# Validates that macOS-specific optimizations are properly applied

set -e

# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}🔍 VS Code macOS Settings Validator${NC}"
echo "=================================="
echo

VSCODE_DIR="$HOME/Library/Application Support/Code/User"
SETTINGS_FILE="$VSCODE_DIR/settings.json"
KEYBINDINGS_FILE="$VSCODE_DIR/keybindings.json"

passed=0
failed=0

# Function to check a setting
check_setting() {
    local description="$1"
    local pattern="$2"
    local file="$3"
    
    if [ ! -f "$file" ]; then
        echo -e "${RED}❌ $description${NC} - File not found: $file"
        ((failed++))
        return
    fi
    
    if grep -q "$pattern" "$file" 2>/dev/null; then
        echo -e "${GREEN}✅ $description${NC}"
        ((passed++))
    else
        echo -e "${RED}❌ $description${NC} - Setting not found"
        ((failed++))
    fi
}

echo -e "${BLUE}Checking Core macOS Integration:${NC}"
check_setting "Native title bar" "window.titleBarStyle.*native" "$SETTINGS_FILE"
check_setting "Native full screen" "window.nativeFullScreen.*true" "$SETTINGS_FILE"
check_setting "Native tabs" "window.nativeTabs.*true" "$SETTINGS_FILE"
check_setting "Smooth scrolling" "editor.smoothScrolling.*true" "$SETTINGS_FILE"
echo

echo -e "${BLUE}Checking Typography:${NC}"
check_setting "SF Mono font" "SF Mono" "$SETTINGS_FILE"
check_setting "Font ligatures" "editor.fontLigatures.*true" "$SETTINGS_FILE"
check_setting "Proper font size" "editor.fontSize.*13" "$SETTINGS_FILE"
echo

echo -e "${BLUE}Checking macOS Behavior:${NC}"
check_setting "Auto-save enabled" "files.autoSave.*afterDelay" "$SETTINGS_FILE"
check_setting "Window restoration" "window.restoreWindows.*all" "$SETTINGS_FILE"
check_setting "System theme detection" "window.autoDetectColorScheme.*true" "$SETTINGS_FILE"
check_setting "Unix line endings" 'files.eol.*"\\n"' "$SETTINGS_FILE"
echo

echo -e "${BLUE}Checking SSH Remote Settings:${NC}"
check_setting "SSH dynamic forwarding" "remote.SSH.enableDynamicForwarding.*true" "$SETTINGS_FILE"
check_setting "SSH agent forwarding" "remote.SSH.enableAgentForwarding.*true" "$SETTINGS_FILE"
check_setting "Window close behavior" "window.closeWhenEmpty.*false" "$SETTINGS_FILE"
echo

echo -e "${BLUE}Checking Keyboard Shortcuts:${NC}"
check_setting "Cmd-based shortcuts" '"cmd+' "$KEYBINDINGS_FILE"
check_setting "Line navigation (Cmd+Left)" 'cmd+left.*cursorHome' "$KEYBINDINGS_FILE"
check_setting "Word navigation (Alt+Left)" 'alt+left.*cursorWordLeft' "$KEYBINDINGS_FILE"
check_setting "Window switching (Cmd+\`)" 'cmd+\`.*quickSwitchWindow' "$KEYBINDINGS_FILE"
echo

echo -e "${BLUE}Checking Performance Optimizations:${NC}"
check_setting "DS_Store exclusion" '\.DS_Store.*true' "$SETTINGS_FILE"
check_setting "Git objects exclusion" 'git/objects.*true' "$SETTINGS_FILE"
check_setting "Node modules exclusion" 'node_modules.*true' "$SETTINGS_FILE"
echo

echo -e "${BLUE}Checking Developer Experience:${NC}"
check_setting "Format on save" "editor.formatOnSave.*true" "$SETTINGS_FILE"
check_setting "Bracket colorization" "editor.bracketPairColorization.enabled.*true" "$SETTINGS_FILE"
check_setting "Git integration" "git.enableSmartCommit.*true" "$SETTINGS_FILE"
check_setting "ZSH as default shell" "terminal.integrated.defaultProfile.osx.*zsh" "$SETTINGS_FILE"
echo

# Summary
echo "=============================="
if [ $failed -eq 0 ]; then
    echo -e "${GREEN}🎉 All checks passed! ($passed/$((passed + failed)))${NC}"
    echo -e "${GREEN}Your VS Code is fully optimized for macOS! 🍎${NC}"
    exit_code=0
else
    echo -e "${YELLOW}⚠️  Some checks failed: $failed/$((passed + failed))${NC}"
    echo -e "${YELLOW}Passed: $passed, Failed: $failed${NC}"
    echo
    echo -e "${BLUE}💡 To fix issues:${NC}"
    echo "1. Re-run the installation: ./install.sh"
    echo "2. Or apply settings manually from the repository"
    echo "3. Check for syntax errors in JSON files"
    exit_code=1
fi

echo
echo -e "${BLUE}📚 For more help:${NC}"
echo "• Repository: https://github.com/JoshFialkoff/vscode-mac-ux"
echo "• Issues: https://github.com/JoshFialkoff/vscode-mac-ux/issues"

exit $exit_code