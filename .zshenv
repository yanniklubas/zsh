# XDG Variables
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

# Editor
export EDITOR="nvim"
export VISUAL="nvim"
# Terminal
export TERMINAL=alacritty

# Homebrew
export PATH="$PATH:/opt/homebrew/bin"

# Bat
export BAT_THEME="Catppuccin-mocha"

# FZF Options
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

export PERSONAL_WORKSPACE="$HOME/personal"
export WORK_WORKSPACE="$HOME/work"
export WORKSPACE="$PERSONAL_WORKSPACE"
