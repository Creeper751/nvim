# AstroNvim User Configuration

My personal user config for AstroVim 
Shoutout to @mehalter for most of my config! :thumbsup: 
Another huge shoutout to @astronvim for the framework, bootstrap, etc. :thumbsup: 

## Installation

- Install AstroNvim

```sh
git clone https://github.com/AstroNvim/AstroNvim.git ~/.config/nvim
```

- Install these user settings

```sh
git clone https://github.com/nvim ~/.config/nvim/lua/user
```

- Initialize AstroVim

```sh
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```
