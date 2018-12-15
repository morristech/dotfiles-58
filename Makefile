DOTFILES := $(PWD)

install: setup

bootstrap:
	bash $(DOTFILES)/bin/bootstrap

setup:
	mkdir -p ~/.virtualenvs
	mkdir -p ~/Downloads
	mkdir -p ~/github
	mkdir -p ~/Repos
	mkdir -p ~/.pip
	rm -f ~/.bash_profile
	rm -f ~/.inputrc
	ln -fsn $(DOTFILES)/bash_profile ${HOME}/.bash_profile
	ln -fsn $(DOTFILES)/rc.d/agrc ${HOME}/.agrc
	ln -fsn $(DOTFILES)/rc.d/dircolors ${HOME}/.dircolors
	ln -fsn $(DOTFILES)/rc.d/gitignore ${HOME}/.gitignore
	ln -fsn $(DOTFILES)/rc.d/hushlogin ${HOME}/.hushlogin
	ln -fsn $(DOTFILES)/rc.d/inputrc ${HOME}/.inputrc
	ln -fsn $(DOTFILES)/rc.d/nanorc ${HOME}/.nanorc
	ln -fsn $(DOTFILES)/rc.d/pip.conf ${HOME}/.pip/pip.conf
	ln -fsn $(DOTFILES)/rc.d/tmux.conf ${HOME}/.tmux.conf
	ln -sn $(DOTFILES)/bin ${HOME}/.bin
