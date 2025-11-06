fpath=( ${fpath:#/usr/local/share/zsh/site-functions} )
# ~/.zshrc —— Clean and optimized for macOS (Apple Silicon)

# Path to Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

# Theme
#ZSH_THEME="robbyrussell"

# Plugins (make sure they are installed in $ZSH_CUSTOM/plugins/)
plugins=(
  git
  z
)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# ────────────────────────────────
# PATH Configuration
# ────────────────────────────────

#fzf（Fuzzy search）
[ -f /opt/homebrew/opt/fzf/shell/key-bindings.zsh ] && source /opt/homebrew/opt/fzf/shell/key-bindings.zsh
[ -f /opt/homebrew/opt/fzf/shell/completion.zsh ] && source /opt/homebrew/opt/fzf/shell/completion.zsh

#fd + fzf 
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#bat + less Enable syntax highlighting for `man` and `less`
export BAT_PAGER="less -RF"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# aliases
alias python=python3
alias pip=pip3
alias zshconfig="code ~/.zshrc"
alias reload="source ~/.zshrc"

# eza (remove --icons if you don't have Nerd Fonts)
alias ls='eza'
alias ll='eza -l'
alias la='eza -la'

# Optional: Add ~/bin if you use it
# export PATH="$HOME/bin:$PATH"

# ────────────────────────────────
# pyenv Support (UNCOMMENT if you install pyenv)
# ────────────────────────────────

# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init --path)"
# eval "$(pyenv init -)"

# ────────────────────────────────
# Locale & Other Settings (optional)
# ────────────────────────────────

# Ensure UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor
export EDITOR=nano

#Modern Command Line Prompt
eval "$(starship init zsh)"

# End of .zshrc —— zsh-syntax-highlighting MUST be the last line
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
