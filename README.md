# Dotfiles

Configurations / settings for my developp:w`



## Installation 


```
brew install stow 

stow <packagename> -t ~
```


### NVIM Notes



Need to install packer before the plugins can get picked up. 
```sh 

git submodule update --init --recursive 

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

