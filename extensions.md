# Recommended VS Code Extensions for macOS Development

Extensions that enhance the macOS development experience and integrate well with the native macOS optimizations.

## 🍎 **macOS-Specific Extensions**

### **SF Symbols**
- **ID**: `aliaksandr-khaniayeu.sf-symbols`
- **Purpose**: Browse and insert SF Symbols (Apple's icon library)
- **Why**: Essential for iOS/macOS development

### **Xcode Theme**
- **ID**: `eppz.xcode-theme`
- **Purpose**: Brings Xcode color scheme to VS Code
- **Why**: Familiar colors for iOS/macOS developers

### **Property List (plist) Support**
- **ID**: `dariofuzinato.plist`
- **Purpose**: Syntax highlighting and editing for .plist files
- **Why**: Essential for macOS/iOS configuration files

## 🛠 **Development Tools**

### **Swift Language Support**
- **ID**: `swift-server.swift`
- **Purpose**: Swift syntax highlighting, debugging, and IntelliSense
- **Why**: Native macOS language support

### **GitLens**
- **ID**: `eamodio.gitlens`
- **Purpose**: Enhanced Git integration with blame, history, and more
- **Why**: Excellent Git visualization that works well with macOS

### **Auto Rename Tag**
- **ID**: `formulahendry.auto-rename-tag`
- **Purpose**: Automatically rename paired HTML/XML tags
- **Why**: Improves productivity for web development on Mac

## 🎨 **Appearance & UI**

### **Material Icon Theme**
- **ID**: `pkief.material-icon-theme`
- **Purpose**: Beautiful file icons that look great on Retina displays
- **Why**: High-quality icons optimized for high-DPI displays

### **Bracket Pair Colorizer 2**
- **ID**: `coenraads.bracket-pair-colorizer-2`
- **Purpose**: Color-code matching brackets
- **Why**: Great visual aid that complements the macOS aesthetic
- **Note**: Built into VS Code now, but this adds more customization

### **Indent Rainbow**
- **ID**: `oderwat.indent-rainbow`
- **Purpose**: Colorize indentation levels
- **Why**: Subtle visual guide that works well with SF Mono font

## 📝 **Text Editing**

### **Code Spell Checker**
- **ID**: `streetsidesoftware.code-spell-checker`
- **Purpose**: Spelling checker for code comments and strings
- **Why**: Maintains code quality with good UX

### **Prettier - Code Formatter**
- **ID**: `esbenp.prettier-vscode`
- **Purpose**: Automatic code formatting
- **Why**: Works seamlessly with format-on-save settings

### **Auto Close Tag**
- **ID**: `formulahendry.auto-close-tag`
- **Purpose**: Automatically close HTML/XML tags
- **Why**: Speeds up markup editing

## 🔧 **Productivity**

### **Path Intellisense**
- **ID**: `christian-kohler.path-intellisense`
- **Purpose**: Autocomplete file paths
- **Why**: Essential for navigation in large codebases

### **Live Server**
- **ID**: `ritwickdey.liveserver`
- **Purpose**: Local development server with live reload
- **Why**: Great for web development with quick preview

### **REST Client**
- **ID**: `humao.rest-client`
- **Purpose**: Test REST APIs directly in VS Code
- **Why**: Eliminates need for separate API testing tools

## 🌐 **Web Development**

### **Auto Import - ES6, TS, JSX, TSX**
- **ID**: `steoates.autoimport`
- **Purpose**: Automatically add import statements
- **Why**: Saves time and reduces errors

### **Debugger for Chrome**
- **ID**: `msjsdiag.debugger-for-chrome`
- **Purpose**: Debug JavaScript in Chrome from VS Code
- **Why**: Integrated debugging experience

### **HTML CSS Support**
- **ID**: `ecmel.vscode-html-css`
- **Purpose**: CSS class name completion in HTML
- **Why**: Improves productivity for frontend development

## 🐍 **Python Development**

### **Python**
- **ID**: `ms-python.python`
- **Purpose**: Full Python support with IntelliSense, debugging, and more
- **Why**: Essential for Python development on macOS

### **Python Docstring Generator**
- **ID**: `njpwerner.autodocstring`
- **Purpose**: Generate Python docstrings automatically
- **Why**: Maintains code documentation standards

## 📱 **Mobile Development**

### **React Native Tools**
- **ID**: `msjsdiag.vscode-react-native`
- **Purpose**: React Native development and debugging
- **Why**: Great for cross-platform mobile development

### **Flutter**
- **ID**: `dart-code.flutter`
- **Purpose**: Flutter app development
- **Why**: Popular cross-platform framework with good macOS support

## ⚡ **Installation Script**

You can install all recommended extensions at once:

```bash
# Core macOS development extensions
code --install-extension aliaksandr-khaniayeu.sf-symbols
code --install-extension eppz.xcode-theme
code --install-extension dariofuzinato.plist
code --install-extension swift-server.swift

# Development tools
code --install-extension eamodio.gitlens
code --install-extension formulahendry.auto-rename-tag
code --install-extension pkief.material-icon-theme

# Text editing
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension esbenp.prettier-vscode
code --install-extension formulahendry.auto-close-tag

# Productivity
code --install-extension christian-kohler.path-intellisense
code --install-extension ritwickdey.liveserver
code --install-extension humao.rest-client

# Python (if needed)
code --install-extension ms-python.python
code --install-extension njpwerner.autodocstring
```

## 🎯 **Extension Categories by Use Case**

### **iOS/macOS Native Development**
- SF Symbols
- Xcode Theme  
- Property List Support
- Swift Language Support

### **Web Development**
- Prettier
- Live Server
- Auto Close Tag
- Path Intellisense
- REST Client

### **General Development**
- GitLens
- Material Icon Theme
- Code Spell Checker
- Auto Rename Tag

### **Python Development**
- Python
- Python Docstring Generator

## 💡 **Tips for Extension Management**

1. **Profiles**: Use VS Code profiles to manage different extension sets for different projects
2. **Performance**: Don't install extensions you don't actively use - they can slow down startup
3. **Updates**: Keep extensions updated for best compatibility
4. **Conflicts**: Some extensions may conflict - disable conflicting ones

## 🔄 **Maintenance**

Regularly review and clean up extensions:
```bash
# List installed extensions
code --list-extensions

# Disable unused extensions
code --disable-extension <extension-id>

# Uninstall extensions
code --uninstall-extension <extension-id>
```

---

These extensions are curated to work well with the macOS optimizations and provide a cohesive, native-feeling development experience on Mac.