export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export EDITOR="nvim"
export VISUAL="nvim"

export TERMINAL=alacritty

# Make path entries unique (https://unix.stackexchange.com/a/62599)
typeset -U path PATH

path+=("/opt/homebrew/bin")

export GOPATH="$HOME/go"
path+=("$GOPATH/bin")

path+=("/opt/homebrew/opt/rustup/bin")
path+=("$HOME/.cargo/bin/")

path+=("/usr/local/bin/")

path+=("$HOME/.dotfiles/scripts")


export PERSONAL_WORKSPACE="$HOME/personal"
export WORK_WORKSPACE="$HOME/work"
