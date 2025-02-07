function source_or_install_zap {
    local ZAP_DIR="$XDG_DATA_HOME/zap"
    if [ ! -d "$ZAP_DIR" ]; then
        zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1 --keep
    fi
    source "$ZAP_DIR/zap.zsh"
}

function source_if_exists {
    local file_path="$1"
    if [ -f "$file_path" ]; then
        source "$file_path"
    fi
}

export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

export BAT_THEME="Catppuccin-mocha"

# FZF Options
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

source_or_install_zap
source_if_exists "$ZDOTDIR/zap.zsh"

# Load and initialise completion system
autoload -Uz compinit
compinit

source_if_exists "$ZDOTDIR/aliases.zsh"

source_if_exists "/usr/share/nvm/init-nvm.sh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi
