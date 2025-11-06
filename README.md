# 🖥️ My Optimized Terminal Setup for Apple Silicon Mac

> [🇨🇳 中文说明](#-中文说明) | [🇬🇧 English Guide](#-english-guide)

A clean, modern, and highly optimized terminal environment built for macOS on Apple Silicon (M1/M2/M3), featuring Starship prompt, fuzzy search, syntax highlighting, and modern CLI replacements.

![Terminal Preview](./screenshot.png)
# 💻 macOS M1 终端配置 (.zshrc)

> 一份简洁、高效、现代化的 Zsh 配置，专为 **macOS (Apple Silicon)** 用户优化，集成常用开发工具与美观终端体验。

---

## ✨ 功能概览

- 🚀 **快速导航与模糊搜索**：`z` + `fzf` + `fd`
- 🧠 **智能命令建议**：`zsh-autosuggestions`
- 🌈 **语法高亮**：`zsh-syntax-highlighting`
- 💫 **美观提示符**：`starship`
- 🦋 **现代化命令工具**：`bat`、`eza`
- 🧰 **开发环境支持**：`git`、`pyenv`（可选）

---

## 📦 环境依赖

| 工具 | 功能 | 安装命令 |
|------|------|-----------|
| [Homebrew](https://brew.sh/) | macOS 包管理器 | `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"` |
| [Oh My Zsh](https://ohmyz.sh/) | Zsh 管理框架 | `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"` |
| [fzf](https://github.com/junegunn/fzf) | 模糊搜索 | `brew install fzf` |
| [fd](https://github.com/sharkdp/fd) | 快速文件搜索 | `brew install fd` |
| [bat](https://github.com/sharkdp/bat) | 彩色文本查看器 | `brew install bat` |
| [eza](https://github.com/eza-community/eza) | 现代化文件列表工具 | `brew install eza` |
| [starship](https://starship.rs/) | 现代命令行提示符 | `brew install starship` |
| [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) | 自动命令建议 | `brew install zsh-autosuggestions` |
| [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) | 语法高亮 | `brew install zsh-syntax-highlighting` |

---

## ⚙️ 使用方法

1. **克隆本仓库**
   ```bash
   git clone https://github.com/wgding/mac-m1-terminal-config.git
   ```

2. **备份原配置**
   ```bash
   cp ~/.zshrc ~/.zshrc.backup
   ```

3. **应用本配置**
   ```bash
   cp .zshrc ~/
   source ~/.zshrc
   ```

4. **重新加载终端**
   ```bash
   exec zsh
   ```

---

## 🧩 插件与增强说明

### 🔹 `zsh-autosuggestions`
自动建议历史命令，提高输入效率。

### 🔹 `zsh-syntax-highlighting`
实时语法高亮，帮助避免输入错误。

### 🔹 `fzf` + `fd`
支持模糊搜索、文件快速定位与目录跳转。

### 🔹 `bat`
增强版 `cat`，支持语法高亮，适配 `man` 与 `less`。

### 🔹 `eza`
替代 `ls`，支持彩色输出与 Nerd Fonts 图标：
```bash
alias ls='eza'
alias ll='eza -l'
alias la='eza -la'
```

### 🔹 `starship`
跨平台现代提示符，轻量、快速、美观。

---

## 🐍 Python 环境支持（可选）

如使用 `pyenv` 管理 Python 版本，可取消 `.zshrc` 中以下部分的注释：

```bash
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
```

---

## ⚡ 常用别名

| 命令 | 功能 |
|------|------|
| `zshconfig` | 使用 VS Code 打开 `.zshrc` |
| `reload` | 重新加载配置 |
| `python` / `pip` | 映射为 `python3` / `pip3` |
| `ls` / `ll` / `la` | 使用 `eza` 显示文件列表 |

---

## 🖼️ Starship 外观与推荐字体

### 推荐字体
为显示 `eza` 图标与 Starship 图标，建议安装以下字体之一：

- [FiraCode Nerd Font](https://www.nerdfonts.com/font-downloads)
- [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)
- [Hack Nerd Font](https://www.nerdfonts.com/font-downloads)

macOS 用户可通过 Homebrew 安装：
```bash
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font
```

### Starship 示例效果
在终端中可获得简洁而美观的提示符，如下所示：

```text
 user@macbook  ~/project  main  
❯ python app.py
```

> 详细自定义配置请参考 [Starship 官方文档](https://starship.rs/config/)。

---

## 🌍 语言与编辑器

- 语言编码：`UTF-8`
- 默认编辑器：`nano`
- 环境路径已适配 `/opt/homebrew`（Apple Silicon）

---

## 🧠 设计理念

> **简洁 · 高效 · 美观 · 可扩展**

让终端既有颜值，又具生产力。  
适合希望在 macOS 上获得一致、现代开发体验的用户。

---

## 🧩 License

MIT License © 2025 [@wgding](https://github.com/wgding)
