# dotfiles - Personal configuration

Using [GNU stow](https://www.gnu.org/software/stow/) to manage the development environment configuration.

## Development Environment setup

### Install common tools

```
sudo apt install stow
sudo apt install neovim
sudo apt install tmux
```

### Install rustup

```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

### vim-plug

- NeoVim

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

- VIM

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## bash

## zsh


## tmux

## git
