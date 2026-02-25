# Contributing to IconButton

Thank you for your interest in contributing to **IconButton**! Contributions are welcome and appreciated. Whether you're fixing a bug, adding a new feature, or improving the documentation, your help makes this project better for everyone.

---

## 🚀 How to Contribute

### 1. Reporting Bugs
If you find a bug, please create a new issue on GitHub. When reporting a bug, please include:
- A clear and descriptive title.
- Steps to reproduce the issue.
- A minimal code snippet that demonstrates the problem.
- Your AutoHotkey version (v2.0+ is required).
- Your Windows version and DPI settings if relevant.

### 2. Suggesting Features
If you have an idea for a new feature or improvement:
- Check the existing issues to see if it has already been suggested.
- If not, open a new issue and describe the functionality you'd like to see and why it would be useful.

### 3. Pull Requests
If you want to contribute code:
1.  **Fork** the repository.
2.  **Clone** your fork to your local machine.
3.  Create a new **branch** for your changes (e.g., `git checkout -b feature/my-new-feature`).
4.  Make your changes.
5.  Test your changes thoroughly using `Examples.ahk` or a custom test script.
6.  **Commit** your changes with clear and descriptive messages.
7.  **Push** your branch to your fork.
8.  Open a **Pull Request** against the main repository.

---

## 🛠️ Coding Standards

To maintain a clean and consistent codebase, please follow these guidelines:

- **AutoHotkey v2 Only**: This library is strictly for AHK v2.0+. Do not submit code that requires v1 compatibility.
- **Naming Conventions**:
  - Classes and Methods: `PascalCase` (e.g., `IconButton`, `SetIcon`).
  - Private Methods/Properties: Prefix with an underscore (e.g., `_ApplyIL`, `_hIL`).
  - Local Variables: `camelCase` (e.g., `scaledSize`, `byteCount`).
- **Performance**: Use GDI/GDI+ and Win32 calls efficiently. Properly free all handles (HICON, ImageList, etc.) to prevent memory leaks.
- **DPI Awareness**: Ensure that any changes to layout or rendering correctly handle Windows High-DPI settings.
- **Comments**: Write clear comments for complex logic, especially when dealing with DllCalls and bitwise operations.

---

## 🧪 Testing

Before submitting a Pull Request, please ensure:
1.  The library still works correctly on standard DPI (100%) and High DPI (e.g., 150%).
2.  Disabling/Enabling the button still correctly toggles the grayscale effect.
3.  Changing properties like `Text` or `IconSize` at runtime does not cause layout glitches.
4.  Memory usage remains stable (no handle leaks).

You can use the provided `Examples.ahk` as a baseline for testing features.

---

## 📜 License

By contributing to this project, you agree that your contributions will be licensed under the same license as the project (MIT License).

