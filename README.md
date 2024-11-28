# Development Environment Setup

## Table of Contents
- [Overview](#overview)
- [Requirements](#requirements)
- [Setup](#setup)

## Overview
The configuration files includes configuring Zsh shells, Neovim and Zed Editor. This guide will help you replicate my development environment on your machine.

## Requirements
- macOS
- git
- stow

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
