# 🌍 Terminal Configuration for macOS (Apple Silicon)

> [🇨🇳 中文](#-中文版) | [🇬🇧 English](#-english)

---

## 🇨🇳 中文版

### 我的终端配置

这是一个为 **Apple Silicon Mac** 优化的现代化终端环境，基于 `zsh` + `Oh My Zsh` + `Starship`，集成 `fzf`、`bat`、`eza` 等现代 CLI 工具。

#### ✨ 功能亮点
- 原生支持 Apple Silicon（所有工具通过 `/opt/homebrew` 安装）
- 使用 **Starship** 提供智能提示符（显示 Git 分支、Python 版本等）
- `fzf` + `fd` 实现模糊搜索（`Ctrl+R` 搜历史，`Ctrl+T` 插入文件）
- `bat` 替代 `cat` 和 `man`，支持语法高亮
- `eza` 替代 `ls`，输出更美观
- 实时命令建议（`zsh-autosuggestions`）和语法高亮（`zsh-syntax-highlighting`）
- 使用 `FiraCode Nerd Font` 支持连字与图标

#### 🔧 安装依赖
```bash
brew install zsh starship fzf fd bat eza zsh-autosuggestions zsh-syntax-highlighting
