SHELL=/bin/bash
PWD=$(shell pwd)
ZSHPATH=$(shell which zsh)

git-setup:
	@git config --global user.name "Bernardo Heynemann"
	@git config --global user.email heynemann@gmail.com
	@git config --global color.diff auto
	@git config --global color.status auto
	@git config --global color.branch auto
	@git config --global core.editor "nvim"

vim-brew:
	@brew install fzf
	@brew install neovim

vim-symlinks:
	@rm -f ~/.config/nvim
	@ln -s ${PWD}/nvim ~/.config/nvim
	@touch ~/.local.nvim.lua

zsh-plugins:
	@brew install antidote

zsh-symlinks:
	@rm -f ~/.zshrc
	@rm -f ~/.zsh
	@ln -s ${PWD}/zsh ~/.zsh
	@ln -s ${PWD}/zsh/zshrc ~/.zshrc
	@ln -s ${PWD}/zsh/zsh_plugins.txt ~/.zsh_plugins.txt
