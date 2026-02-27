# 🤝 Contributing to IconButton

Thanks for contributing to **IconButton**.

## 🚀 How to Contribute

- Report bugs with: clear title, repro steps, minimal sample, AutoHotkey version (v2.0+), and Windows/DPI details when relevant.
- Suggest features by checking existing issues first, then opening a new issue with the use case and expected behavior.
- For code changes:
  1. Fork and clone the repository.
  2. Create a branch (`feature/...` or `fix/...`).
  3. Implement and test your changes.
  4. Commit with clear messages.
  5. Open a pull request to `main`.

## 🛠️ Coding Guidelines

- AutoHotkey **v2 only**.
- Keep Win32/GDI resource handling safe (no handle leaks).
- Ensure DPI-aware rendering and layout behavior.
- Add comments only where logic is non-obvious.

## ✅ Testing Checklist

Before opening a PR, verify:
- Works on 100% and high DPI (for example, 150%).
- Enable/disable state still updates grayscale behavior correctly.
- Runtime updates (for example `Text`, `IconSize`) do not break layout.
- No obvious memory/handle leaks.

Use `Examples.ahk` as a quick baseline.

## 📄 License

By contributing, you agree your changes are released under the project's MIT license.
