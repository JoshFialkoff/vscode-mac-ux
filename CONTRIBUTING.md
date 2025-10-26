# Contributing to VS Code macOS UX

Thank you for your interest in contributing! This guide will help you get started.

## 🚀 Quick Start

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/your-feature-name`
3. Make your changes
4. Test your changes using `./test-macos-vscode.sh`
5. Commit with a descriptive message
6. Push to your fork and create a Pull Request

## 🌿 Branching Strategy

We follow Git Flow branching model:

- **`main`** - Production-ready releases
- **`develop`** - Integration branch for features
- **`feature/*`** - New features and enhancements
- **`hotfix/*`** - Critical bug fixes
- **`release/*`** - Release preparation

### Branch Naming Conventions

- `feature/ssh-remote-improvements`
- `hotfix/font-rendering-fix`
- `release/v1.2.0`
- `docs/update-readme`

## 📝 Commit Message Format

Use conventional commits format:

```
type(scope): description

[optional body]

[optional footer]
```

### Types
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting, etc.)
- `refactor`: Code refactoring
- `test`: Adding or updating tests
- `chore`: Maintenance tasks

### Examples
```
feat(settings): add SSH remote multi-instance support
fix(keybindings): correct Cmd+` window switching
docs(readme): update installation instructions
```

## 🧪 Testing

Before submitting a PR:

1. **Test the configuration**:
   ```bash
   ./test-macos-vscode.sh
   ```

2. **Verify VS Code behavior**:
   - Native title bar works
   - Keyboard shortcuts function correctly
   - SSH remote connections work as expected
   - No conflicts with existing settings

3. **Test on different macOS versions** (if possible):
   - macOS Monterey (12.x)
   - macOS Ventura (13.x)
   - macOS Sonoma (14.x)
   - macOS Sequoia (15.x)

## 🎯 What We're Looking For

### High Priority
- **SSH/Remote development improvements**
- **Performance optimizations**
- **Better macOS integration**
- **Accessibility improvements**

### Medium Priority
- **New keyboard shortcuts**
- **Theme enhancements**
- **Extension recommendations**
- **Documentation improvements**

### Lower Priority
- **Cosmetic changes**
- **Personal preferences** (unless widely applicable)

## 📋 Pull Request Guidelines

### Before Creating a PR

1. **Check existing issues** and PRs
2. **Test thoroughly** on your machine
3. **Update documentation** if needed
4. **Add entries to CHANGELOG.md**

### PR Description Template

```markdown
## Description
Brief description of changes

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Documentation update
- [ ] Performance improvement

## Testing
- [ ] Tested with VS Code version: X.X.X
- [ ] Tested on macOS version: X.X.X
- [ ] All keyboard shortcuts work
- [ ] SSH remote functionality tested
- [ ] No conflicts with existing settings

## Screenshots (if applicable)
Add screenshots showing the changes

## Checklist
- [ ] Code follows project conventions
- [ ] Self-review completed
- [ ] Documentation updated
- [ ] CHANGELOG.md updated
```

## 🐛 Reporting Issues

### Before Reporting
1. Check existing issues
2. Test with the latest version
3. Try with minimal VS Code setup

### Issue Template
- **VS Code version**
- **macOS version**
- **Expected behavior**
- **Actual behavior**
- **Steps to reproduce**
- **Screenshots/logs** (if applicable)

## 💡 Enhancement Suggestions

We welcome suggestions for:
- **New macOS-specific optimizations**
- **Better keyboard shortcuts**
- **Performance improvements**
- **Developer workflow enhancements**

## 🎨 Code Style

### JSON Files
- Use 2-space indentation
- Include comments explaining macOS-specific choices
- Group related settings together
- Maintain alphabetical order within groups

### Shell Scripts
- Use bash/zsh compatible syntax
- Include error handling
- Add descriptive comments
- Follow shellcheck recommendations

### Documentation
- Use clear, concise language
- Include code examples
- Explain the "why" behind choices
- Keep macOS focus

## 🏷️ Release Process

### Version Numbering
We follow [Semantic Versioning](https://semver.org/):
- **MAJOR**: Breaking changes
- **MINOR**: New features (backward compatible)
- **PATCH**: Bug fixes (backward compatible)

### Release Checklist
1. Update version in `package.json`
2. Update `CHANGELOG.md`
3. Create release branch
4. Test thoroughly
5. Merge to main
6. Tag release
7. Create GitHub release

## 🤝 Community

- Be respectful and constructive
- Help others learn macOS best practices
- Share knowledge about VS Code optimization
- Focus on what benefits Mac developers

## 📚 Resources

- [VS Code Documentation](https://code.visualstudio.com/docs)
- [macOS Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/macos)
- [Git Flow Workflow](https://nvie.com/posts/a-successful-git-branching-model/)
- [Conventional Commits](https://www.conventionalcommits.org/)

---

Thank you for contributing to make VS Code better for Mac developers! 🍎