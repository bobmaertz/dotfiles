## Setup Variables
export XDG_CONFIG_HOME=$HOME/.config
# NOTE: do not set TERM here. The terminal emulator and tmux set it correctly
# (tmux uses tmux-256color); overriding it breaks true-color and terminfo inside tmux.
export SOPS_AGE_KEY_FILE=$HOME/.sops/key.txt

export GOPATH=$HOME/go
LOCAL_SCRIPTS=$HOME/.local/scripts
LOCAL_BIN=$HOME/.local/bin

export PATH=$HOME/bin:/usr/local/bin:/opt/homebrew/bin:$PATH
export PATH=$HOME/.istioctl/bin:$PATH
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin:${LOCAL_SCRIPTS}:${LOCAL_BIN}"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git ssh-agent)

source $ZSH/oh-my-zsh.sh

# Disable flow control so an accidental Ctrl-S can't freeze the terminal
[[ -t 0 ]] && stty -ixon

source <(fzf --zsh)

# zoxide: tracks visited dirs; feeds tmux-session-new and provides `z`
command -v zoxide >/dev/null && eval "$(zoxide init zsh)"

source ~/.zsh_profile

# Setup private or work sources
test -f ~/.zsh_work && source ~/.zsh_work

export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"

# Needed for ssh to work with brew installed openssh (see: https://stackoverflow.com/questions/68573454/having-difficulty-to-get-ssh-with-a-yubikey-working-with-macos-monterey#comment128135654_69416173) 
export PATH=$(brew --prefix openssh)/bin:$PATH
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"

