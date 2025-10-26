# VS Code macOS UX Optimization

A comprehensive configuration package that optimizes Visual Studio Code for macOS, bringing native behavior, appearance, and keyboard shortcuts that feel natural to Mac users.

## 🎮 **Try the Interactive Demo**

**👀 See it in action:** [Live Interactive Demo](https://joshfialkoff.github.io/vscode-mac-ux/live-preview.html)

**📱 Quick overview:** [Visual Before/After](https://joshfialkoff.github.io/vscode-mac-ux/)

## 🍎 What This Does

This configuration transforms VS Code to behave like a native macOS application by:

### **Native macOS Integration**
- **Native title bar** with traffic light controls on the left
- **macOS full-screen mode** support
- **Native tabs** that work with macOS window management
- **Smooth scrolling** that matches other Mac apps
- **Auto-hiding scrollbars** like system apps

### **Typography & Fonts**
- **SF Mono** as primary font (Apple's system monospace)
- **Monaco** as fallback (classic Mac development font)
- **Optimized font rendering** for Retina displays
- **Proper line spacing** for readability

### **macOS Keyboard Shortcuts**
- **Cmd+Left/Right** - Jump to beginning/end of line
- **Option+Left/Right** - Move by word
- **Cmd+`** - Switch between VS Code windows
- **Cmd+B** - Toggle sidebar
- All standard macOS shortcuts (Cmd+C/V/X, Cmd+Z, etc.)

### **File Handling**
- **Auto-save** after 1 second (like TextEdit)
- **Window restoration** on restart
- **System theme following** (auto dark/light mode)
- **Proper line endings** (Unix/macOS style)

### **Performance Optimizations**
- Excludes macOS system files (`.DS_Store`, etc.)
- Optimized file watching for better performance
- Respects macOS accessibility settings

## 🚀 Quick Start

### **Option 1: One-Line Install (Fastest)**

```bash
curl -sSL https://raw.githubusercontent.com/JoshFialkoff/vscode-mac-ux/main/install.sh | bash
```

This will automatically backup your settings and apply the optimizations.

### **Option 2: Safe Testing (Recommended)**

Test the configuration safely with automatic backup:

```bash
# Clone the repository
git clone git@github.com:JoshFialkoff/vscode-mac-ux.git
cd vscode-mac-ux

# Run the interactive test script
./test-macos-vscode.sh
```

The test script will:
- ✅ Backup your current settings automatically
- ✅ Apply the macOS optimizations temporarily
- ✅ Guide you through testing key features
- ✅ Provide easy rollback if needed

### **Option 3: Manual Installation**

If you prefer to install manually:

```bash
# Backup your current settings (recommended)
cd ~/Library/Application\ Support/Code/User
cp settings.json settings.json.backup
cp keybindings.json keybindings.json.backup

# Install the optimized settings
git clone git@github.com:JoshFialkoff/vscode-mac-ux.git
cd vscode-mac-ux
cp settings.json ~/Library/Application\ Support/Code/User/
cp keybindings.json ~/Library/Application\ Support/Code/User/

# Restart VS Code
```

## 🧪 What to Test

After installation, verify these features work:

### **Visual Changes**
- [ ] Native macOS title bar (traffic lights on left)
- [ ] SF Mono font in editor and terminal
- [ ] Smooth scrolling with mouse wheel
- [ ] Auto-hiding scrollbars
- [ ] Theme follows system appearance

### **Keyboard Shortcuts**
- [ ] `Cmd+Left/Right` - Move to line start/end
- [ ] `Option+Left/Right` - Move by word
- [ ] `Cmd+`` ` - Switch VS Code windows
- [ ] `Cmd+B` - Toggle sidebar
- [ ] `Cmd+J` - Toggle terminal panel

### **Behavior**
- [ ] Files auto-save after 1 second
- [ ] Windows restore when restarting VS Code
- [ ] Native full-screen mode works
- [ ] Clean file handling (no `.DS_Store` in search)

## 📁 Files Included

| File | Purpose |
|------|---------|
| `settings.json` | Main VS Code settings with complete macOS optimizations |
| `keybindings.json` | macOS-native keyboard shortcuts |
| `install.sh` | One-line installer with automatic backup |
| `test-macos-vscode.sh` | Interactive testing script with backup/restore |
| `validate.sh` | Settings validator to verify proper configuration |
| `profiles/` | Different configuration profiles for various use cases |
| `extensions.md` | Recommended extensions for macOS development |

## 🔧 Configuration Profiles

Choose the right profile for your needs:

- **`profiles/minimal.json`** - Essential macOS integration only
- **`settings.json`** (main) - Complete optimization with all features

See [`profiles/README.md`](profiles/README.md) for detailed comparison.

## ✅ Validation

After installation, verify everything works:

```bash
./validate.sh
```

This will check all macOS-specific settings and report any issues.

## 🔄 Rollback Instructions

### **If you used the test script:**
The script provides automatic rollback commands.

### **If you installed manually:**
```bash
cd ~/Library/Application\ Support/Code/User
cp settings.json.backup settings.json
cp keybindings.json.backup keybindings.json
# Restart VS Code
```

## 🛠 Customization

The configuration is designed to be a solid foundation. You can customize:

### **Fonts**
Edit the `editor.fontFamily` setting in `settings.json`:
```json
"editor.fontFamily": "Your Preferred Font, SF Mono, Monaco"
```

### **Theme**
The config auto-follows system theme, but you can set specific themes:
```json
"workbench.preferredDarkColorTheme": "Your Dark Theme",
"workbench.preferredLightColorTheme": "Your Light Theme"
```

### **Keyboard Shortcuts**
Add your custom shortcuts to `keybindings.json`.

## 🎯 Target Users

This configuration is perfect for:
- **Mac developers** who want VS Code to feel native
- **Users switching** from Xcode or other Mac editors
- **Teams** wanting consistent macOS experience
- **Anyone** who values good UX and native behavior

## 🤝 Contributing

Found an improvement or macOS-specific optimization? PRs welcome!

## 📄 License

MIT License - Use freely in personal and commercial projects.

---

**Made with ❤️ for Mac developers who appreciate good UX**