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
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

source ~/.zsh_profile
source ~/.zsh_work

export SOPS_AGE_KEY_FILE=$HOME/.sops/key.txt

