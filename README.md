# Dotfiles

Configurations / settings for my development environment.



## Installation 


```
brew install stow 

stow <packagename> -t ~
```


### NVIM Notes

Requires Neovim 0.11+ (the config targets 0.12). The nvim config lives in
the [init.nvim](https://github.com/bobmaertz/init.nvim) submodule and uses
lazy.nvim, which bootstraps itself on first launch — no manual plugin
manager install needed.

```sh
git submodule update --init --recursive
stow nvim -t ~
nvim   # lazy.nvim installs plugins from lazy-lock.json on first run
```

