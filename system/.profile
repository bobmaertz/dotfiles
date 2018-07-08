#TODO: Interesting way to source files. Update and use this later. 
#for DOTFILE in 'find ~/workspace/.dotfiles'
#do 
# [ -f "$DOTFILE" ] && source "$DOTFILE"
#done


# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$HOME/tools:$PATH"
