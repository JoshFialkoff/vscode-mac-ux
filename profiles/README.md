# VS Code Profile Configurations

Different configuration profiles optimized for various use cases and preferences.

## 📁 Available Profiles

### `minimal.json` - Essential macOS Integration
Perfect for users who want core macOS behavior without advanced features.

**Includes:**
- Native title bar and full screen
- SF Mono font configuration
- Smooth scrolling
- Auto-save behavior
- System theme following
- Basic file exclusions

**Use when:**
- First time trying macOS optimizations
- Want minimal changes to existing setup
- Prefer simplicity over features
- Working on shared/team machines

**Installation:**
```bash
cp profiles/minimal.json ~/Library/Application\ Support/Code/User/settings.json
```

### `settings.json` (Main) - Complete Optimization
Full-featured configuration with all macOS optimizations and developer tools.

**Includes everything in minimal plus:**
- SSH remote development optimizations
- Advanced keyboard shortcuts
- Performance optimizations
- Developer workflow enhancements
- Comprehensive file handling
- Git integration improvements

**Use when:**
- Want the full macOS experience
- Heavy VS Code user
- Remote development workflows
- Professional development environment

### Creating Custom Profiles

You can create your own profiles by:

1. Starting with `minimal.json` as a base
2. Adding specific settings you need
3. Testing with the validation script:
   ```bash
   # Copy your profile to VS Code
   cp profiles/your-profile.json ~/Library/Application\ Support/Code/User/settings.json
   
   # Validate it works
   ./validate.sh
   ```

## 🔄 Profile Switching

To switch between profiles:

```bash
# Backup current settings
cp ~/Library/Application\ Support/Code/User/settings.json settings.backup.json

# Apply a profile
cp profiles/minimal.json ~/Library/Application\ Support/Code/User/settings.json

# Restart VS Code
```

## 🎯 Profile Comparison

| Feature | Minimal | Complete |
|---------|---------|----------|
| Native macOS UI | ✅ | ✅ |
| SF Mono Font | ✅ | ✅ |
| Auto-save | ✅ | ✅ |
| SSH Remote Support | ❌ | ✅ |
| Advanced Keybindings | ❌ | ✅ |
| Performance Tuning | Basic | Complete |
| Git Integration | Basic | Advanced |
| File Size | ~1KB | ~5KB |

## 💡 Recommendations

- **New users**: Start with `minimal.json`
- **Experienced users**: Use main `settings.json`
- **Team environments**: Consider `minimal.json` for consistency
- **Remote development**: Use main `settings.json` for SSH optimizations