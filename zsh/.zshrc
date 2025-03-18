# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/opt/homebrew/bin:/Users/bob/Library/Python/2.7/bin:$PATH

export PATH=$HOME/.istioctl/bin:$PATH
export GOPATH=$HOME/go

LOCAL_SCRIPTS=$HOME/.local/scripts

export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin:${LOCAL_SCRIPTS}"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

plugins=(git ssh-agent)

source $ZSH/oh-my-zsh.sh

source <(fzf --zsh)

source ~/.zsh_profile

test -f ~/.zsh_work && source ~/.zsh_work

export SOPS_AGE_KEY_FILE=$HOME/.sops/key.txt

export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"

# Needed for ssh to work with brew installed openssh (see: https://stackoverflow.com/questions/68573454/having-difficulty-to-get-ssh-with-a-yubikey-working-with-macos-monterey#comment128135654_69416173) 
export PATH=$(brew --prefix openssh)/bin:$PATH
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
