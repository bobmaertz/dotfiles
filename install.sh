#! /bin/sh

# Get this directory 
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#Set Symlinks
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~

ln -sfv "$DOTFILES_DIR/bash/.bashrc" ~
ln -sfv "$DOTFILES_DIR/bash/.bash_aliases" ~
ln -sfv "$DOTFILES_DIR/bash/.env" ~
ln -sfv "$DOTFILES_DIR/bash/.functions" ~
ln -sfv "$DOTFILES_DIR/bash/.grep" ~
ln -sfv "$DOTFILES_DIR/bash/.inputrc" ~
ln -sfv "$DOTFILES_DIR/bash/.profile" ~

ln -sfv "$DOTFILES_DIR/bash/.viminfo" ~

