function source_or_install_zap {
    local ZAP_DIR="$XDG_DATA_HOME/zap"
    [[ ! -d "$ZAP_DIR" ]] && {
            zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1 --keep
    }
    source "$ZAP_DIR/zap.zsh"
}

function source_if_exists {
    [ -f "$1" ] && source "$1"
}

source_or_install_zap
source_if_exists "$ZDOTDIR/zap.zsh"

# Load and initialise completion system
autoload -Uz compinit
compinit

source_if_exists "$ZDOTDIR/aliases.zsh"

source_if_exists "/usr/share/nvm/init-nvm.sh"
