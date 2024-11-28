# Development Environment Setup

## Overview
The configuration files includes configuring [Zsh](https://www.zsh.org/) shells, [Neovim](https://neovim.io/) and [Zed](https://zed.dev/) editor. This guide will help you replicate my development environment on your machine.

## Requirements
- MacOS
- [Git](https://git-scm.com/)
- [GNU Stow](https://www.gnu.org/software/stow/)

## Setup
1. Download the dotfiles on your computer:
    ```sh
    git clone git@github.com:kpvskd/dotfiles.git ~/.dotfiles
    ```
2. Navigate to the dotfiles directory:
    ```sh
    cd ~/.dotfiles
    ```
3. Use GNU Stow for per package to create symlinks:
    ```sh
    stow git
    stow zsh
    stow p10k
    stow nvim
    stow zed
    ```
