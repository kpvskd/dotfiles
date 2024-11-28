# Development Environment Setup

## Table of Contents
- [Overview](#overview)
- [Requirements](#requirements)
- [Setup](#setup)

## Overview
The configuration files includes configuring Zsh shells, iTerm2, Neovim and Zed editors. This guide will help you replicate my development environment on your machine.

## Requirements
- MacOS
- [Zsh](https://www.zsh.org/)
- [Homebrew](https://brew.sh/)
- [Git](https://git-scm.com/)
- [GNU Stow](https://www.gnu.org/software/stow/)
- [iTerm2](https://iterm2.com/index.html)
- [GnuPG](https://gnupg.org/) and [pinentry-mac](https://github.com/GPGTools/pinentry)
- Plugins for zsh: 
    - [powerlevel10k](https://github.com/romkatv/powerlevel10k)
    - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
    - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [Neovim](https://neovim.io/)
- [Zed](https://zed.dev/)
- Fonts:
    - [JetBrains Mono](https://www.jetbrains.com/lp/mono/)
    - [NerdFontsSymbolsOnly Mono](https://github.com/ryanoasis/nerd-fonts)

## Setup
1. Install Homebrew:
    ```sh
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```
2. Add Homebrew to PATH:
    ```sh
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> $HOME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    ```
3. Install applications:
    ```sh
    brew install git stow iterm2 gnupg pinentry-mac powerlevel10k zsh-autosuggestions zsh-syntax-highlighting neovim zed
    ```
4. Download the dotfiles on your computer:
    ```sh
    git clone git@github.com:kpvskd/dotfiles.git ~/.dotfiles
    ```
5. Navigate to the dotfiles directory:
    ```sh
    cd ~/.dotfiles
    ```
6. Use GNU Stow for per package to create symlinks:
    ```sh
    stow git
    stow zsh
    stow p10k
    stow nvim
    stow zed
    ```
7. Disable last login info:
    ```sh
    touch .hushlogin
    ```
8. Setup Git and GitHub:
    ```sh
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_ed25519
    ssh -T git@github.com
    ```
9. Install fonts:
    - [JetBrains Mono](https://www.jetbrains.com/lp/mono/)
    - [NerdFontsSymbolsOnly Mono](https://github.com/ryanoasis/nerd-fonts)
