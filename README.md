# 🖥️ My Optimized Terminal Setup for Apple Silicon Mac

> [🇨🇳 中文说明](#-中文说明) | [🇬🇧 English Guide](#-english-guide)

A clean, modern, and highly optimized terminal environment built for macOS on Apple Silicon (M1/M2/M3), featuring Starship prompt, fuzzy search, syntax highlighting, and modern CLI replacements.

![Terminal Preview](./screenshot.png)

---

## 🇨🇳 中文说明

这是一个为 **Apple Silicon Mac（M1/M2/M3）** 打造的干净、现代且高度优化的终端环境。基于 `zsh` + `Oh My Zsh` + `Starship`，集成了一系列现代化命令行工具，提升开发效率与视觉体验。

### ✨ 核心特性

- **原生 Apple Silicon 支持**  
  所有工具通过 `/opt/homebrew` 安装，彻底移除 x86 Homebrew 路径干扰。
- **智能提示符（Starship）**  
  自动显示 Git 分支、Python 版本、目录状态等上下文信息，图标美观。
- **极速模糊搜索**  
  `fzf` + `fd` 实现：
  - `Ctrl+R`：模糊搜索历史命令
  - `Ctrl+T`：模糊插入文件路径
- **语法高亮与现代输出**
  - `bat` 替代 `cat` 和 `man`，支持彩色语法高亮
  - `eza` 替代 `ls`，提供更清晰、美观的文件列表
- **智能辅助功能**
  - 实时命令建议（`zsh-autosuggestions`）
  - 输入语法高亮（`zsh-syntax-highlighting`）
- **高效目录跳转**  
  使用 `z` 插件，输入 `z <关键词>` 即可秒级跳转常用目录。
- **字体美化支持**  
  推荐搭配 **FiraCode Nerd Font**，启用连字（ligatures）与开发者图标。

### 🔧 安装依赖

确保已安装 [Homebrew](https://brew.sh/)，然后运行：

```bash
brew install zsh starship fzf fd bat eza zsh-autosuggestions zsh-syntax-highlighting
